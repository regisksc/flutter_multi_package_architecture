import 'package:flutter/material.dart';
import 'package:iupp_components/components/atoms/dividers/dividers.dart';

class SuccessfulOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const summaryDetails = <Widget>[
      Text(
        'Número do pedido:',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        '9054400807461679',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        'Enviamos a confirmação de pedido para:\nantoniocountinho@gmail.com',
        style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
      ),
      Text(
        'Acompanhar pedido',
        style: TextStyle(
          color: Color(0xFF0070D4),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: sort_child_properties_last
        children: [
          ...summaryDetails
              .map((item) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: item,
                  ))
              .toList(),
          const IuppDivider(
            verticalPadding: 24,
          ),
          const Text('Produto vem aqui, validar depois reuso de componente')
        ],
      ),
    );
  }
}
