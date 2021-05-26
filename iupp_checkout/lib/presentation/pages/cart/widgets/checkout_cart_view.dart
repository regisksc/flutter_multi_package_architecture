import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../../../domain/domain.dart';
import '../../../../domain/entities/item_cart_entity.dart';
import '../../../widgets/widgets.dart';
import 'checkout_cep_area.dart';
import 'checkout_item_cart.dart';
import 'checkout_subtotal_area.dart';

class CheckoutCartView extends StatelessWidget {
  const CheckoutCartView({
    Key? key,
    required this.cart,
    required this.calcShippingValue,
    required this.incrementItem,
    required this.decrementItem,
  }) : super(key: key);

  final CartEntity cart;
  final Function(String) calcShippingValue;
  final Function(int) incrementItem;
  final Function(int) decrementItem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CheckoutTitle(title: 'carrinho'),
          IuppCard(
            children: [
              ...cart.items
                  .map(
                    (itemCart) => CheckoutItemCart(
                      photoUrl: itemCart.photoUrl,
                      description: itemCart.description,
                      sellerName: itemCart.seller.name,
                      price: itemCart.total,
                      points: itemCart.totalPoints.toString(),
                      count: itemCart.quantity,
                      expectedDeliveryDays: cart.shipping?.expectedDeliveryDays,
                      increment: () => incrementItem(itemCart.id),
                      decrement: () => _handleDecrementItem(context, itemCart),
                    ),
                  )
                  .toList(),
              CheckoutCepArea(
                initialValue: cart.shipping?.cep ?? '',
                shippingValue: cart.shipping?.value,
                onSearch: (value) {
                  calcShippingValue(value);
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
              const IuppDivider(verticalPadding: 18),
              CheckoutSubtotalArea(
                points: cart.totalPoints,
                total: cart.subtotal,
              ),
            ],
          ),
          IuppCheckoutButtonNavigate(
            label: 'continuar',
            onpressed: () => {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              '¹ Os pontos serão creditados em até 40 dias após a confirmação do pagamento.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7C7B8B),
              ),
            ),
          ),
          if (cart.shipping?.expectedDeliveryDays != null)
            const Padding(
              padding: EdgeInsets.only(top: 4, left: 24, right: 24),
              child: Text(
                '² O prazo de entrega é iniciado no 1º dia útil após a confirmação do pagamento.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7C7B8B),
                ),
              ),
            ),
          const SizedBox(height: 48),
          const CheckoutFooterText(),
        ],
      ),
    );
  }

  void _handleDecrementItem(BuildContext context, ItemCartEntity itemCart) {
    if (itemCart.quantity != 1) {
      decrementItem(itemCart.id);
    } else {
      _showBottomSheet(context, itemCart);
    }
  }

  Future _showBottomSheet(BuildContext context, ItemCartEntity itemCart) {
    return showIuppOverlayBottomSheet(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Deseja realmente excluir este produto do seu carrinho?'),
          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 12),
            width: double.maxFinite,
            child: IuppElevatedButton(
              text: 'excluir produto',
              onPressed: () {
                decrementItem(itemCart.id);
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: IuppOutlinedButton(
              text: 'manter no carrinho',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
