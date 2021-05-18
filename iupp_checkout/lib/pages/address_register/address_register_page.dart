import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/widgets/iupp_address_general_info.dart';

import 'components/components.dart';

class AddressRegisterPage extends StatefulWidget {
  const AddressRegisterPage({Key? key}) : super(key: key);

  @override
  _AddressRegisterPageState createState() => _AddressRegisterPageState();
}

class _AddressRegisterPageState extends State<AddressRegisterPage> {
  String cep = '';
  bool cepChoosed = false;
  bool isLoading = false;

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
          Flexible(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 29,
                      bottom: 24,
                      left: 24,
                      right: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CepFormField(
                          cep: cep,
                          onChanged: (value) => setState(() => cep = value),
                          enabled: !cepChoosed,
                        ),
                        if (cepChoosed) const CompleteForm(),
                      ],
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
            child: cepChoosed
                ? const ConfirmRegisterButton(
                    isLoading: false,
                    onPressed: null,
                  )
                : ContinueRegisterButton(
                    isLoading: isLoading,
                    onPressed: cep.isEmpty
                        ? null
                        : () async {
                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(const Duration(seconds: 2));
                            setState(() {
                              isLoading = false;
                              cepChoosed = true;
                            });
                          },
                  ),
          ),
          const IuppAddressGeneralInfo(),
        ],
      ),
    );
  }
}
