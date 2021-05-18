import 'package:flutter/material.dart';
import 'package:iupp_checkout/utils/masks.dart';

class CepFormField extends StatelessWidget {
  const CepFormField({
    Key? key,
    required this.cep,
    required this.enabled,
    required this.onChanged,
  }) : super(key: key);

  final String cep;
  final bool enabled;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        inputFormatters: [cepFormater],
        initialValue: cep,
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: 'ex: 00000-000',
          labelText: 'Digite o CEP',
          suffix: enabled
              ? const Text(
                  'Não sei meu CEP',
                  style: TextStyle(color: Color(0xFF0070D4)),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
