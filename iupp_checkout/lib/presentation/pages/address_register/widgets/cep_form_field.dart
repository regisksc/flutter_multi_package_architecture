import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

class CepFormField extends StatelessWidget {
  const CepFormField({
    Key? key,
    required this.cep,
    required this.onChanged,
  }) : super(key: key);

  final String cep;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.bottom,
        inputFormatters: [cepFormater],
        initialValue: cep,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'ex: 00000-000',
          labelText: 'Digite o CEP',
          suffix: const Text(
                  'Não sei meu CEP',
                  style: TextStyle(color: Color(0xFF0070D4)),
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
