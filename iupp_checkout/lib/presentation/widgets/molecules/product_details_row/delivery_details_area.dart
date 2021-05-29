import 'package:flutter/material.dart';
import 'package:iupp_components/styles/styles.dart';

import '../../../presentation.dart';

class DeliveryDetailsArea extends StatelessWidget {
  const DeliveryDetailsArea({
    Key? key,
    required this.orderItem,
    this.isEditable = false,
  }) : super(key: key);

  final OrderItem orderItem;
  final bool isEditable;

  Widget _deliveryDescription() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Entrega 01 por ',
              style: IuppFonts.description,
              children: [TextSpan(text: 'Magazine Luiza', style: IuppFonts.descriptionBold)],
            ),
          ),
          const Text('Padrão', style: IuppFonts.description),
          const Text('Em até 8 dias úteis²  -', style: IuppFonts.description),
        ],
      );

  Widget _infoDeliverySection() => Row(
        children: [const Spacer(), Expanded(flex: 4, child: _deliveryDescription())],
      );

  Widget _editableDeliverySection() => Row(
        children: [
          _deliveryDescription(),
          const Spacer(),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return isEditable ? _editableDeliverySection() : _infoDeliverySection();
  }
}
