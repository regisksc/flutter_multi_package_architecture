import 'package:flutter/material.dart';
import 'package:iupp_components/iupp_components.dart';

import '../delivery_options_page.dart';
import 'widgets.dart';

class DeliverySellerCard extends StatefulWidget {
  const DeliverySellerCard({
    Key? key,
    required this.number,
    required this.seller,
    required this.deliveryTypes,
    required this.productDescription,
    required this.productImage,
  }) : super(key: key);

  final int number;
  final String seller;
  final List<DeliveryType> deliveryTypes;
  final String productDescription;
  final String productImage;

  @override
  _DeliverySellerCardState createState() => _DeliverySellerCardState();
}

class _DeliverySellerCardState extends State<DeliverySellerCard> {
  int pickedDeliverOption = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Entrega 0${widget.number} por ',
                  children: [
                    TextSpan(
                      text: widget.seller,
                      style: const TextStyle(
                        color: Color(0xFF494C57),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Image.network(widget.productImage),
                title: Text(
                  widget.productDescription,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text(
                  'R\$ 5.999,20 à vista',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, i) => ListTile(
                  onTap: () {
                    setState(() {
                      pickedDeliverOption = i + 1;
                    });
                  },
                  leading: DeliverOptionCheckBox(
                      isPicked: i == pickedDeliverOption - 1),
                  title: Text(widget.deliveryTypes[i].title),
                  subtitle: Text(widget.deliveryTypes[i].subtitle),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Grátis',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E8449),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        IuppIcons.icone_contorno_S_seta_direita,
                        color: Color(0xFF0070D4),
                        size: 19,
                      ),
                    ],
                  ),
                ),
                itemCount: widget.deliveryTypes.length,
                separatorBuilder: (_, __) => const Divider(
                  color: Color(0xFFE1E4EC),
                  height: 1,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
