import 'package:flutter/material.dart';
import 'package:iupp_checkout/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/widgets/iupp_address_general_info.dart';
import 'package:iupp_components/buttons/i_elevated_button.dart';

import '../../utils/masks.dart';

class InputCepPage extends StatefulWidget {
  const InputCepPage({Key? key}) : super(key: key);

  @override
  _InputCepPageState createState() => _InputCepPageState();
}

class _InputCepPageState extends State<InputCepPage> {
  String cep = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: IuppAddressAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 23),
            child: Text(
              'onde deseja receber seu\npedido?',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2)),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 29, bottom: 24, left: 24, right: 24),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.bottom,
                    inputFormatters: [cepFormater],
                    initialValue: cep,
                    onChanged: (cepValue) {
                      setState(() {
                        cep = cepValue;
                      });
                    },
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
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 24,
              left: 24,
              right: 24,
            ),
            child: IElevatedButton(
              text: 'continuar',
              textPadding: const EdgeInsets.all(13),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              onPressed: cep.isEmpty ? null : () {},
            ),
          ),
          const Spacer(),
          const IuppAddressGeneralInfo(),
        ],
      ),
    );
  }
}
