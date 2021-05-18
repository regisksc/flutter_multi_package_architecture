import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/widgets/iupp_address_app_bar.dart';
import 'package:iupp_checkout/widgets/iupp_address_general_info.dart';
import 'package:iupp_components/buttons/i_elevated_button.dart';

import '../../utils/masks.dart';

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
                        if (!cepChoosed)
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
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
                          )
                        else ...[
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            enabled: false,
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
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Endereço',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
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
                                    labelText: 'Número',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 16, right: 8),
                                child: Text('Sem número'),
                              ),
                              Expanded(
                                child: Switch.adaptive(
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Complemento (opcional)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Bairro',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Cidade',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Estado',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Ponto de referência',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Nome do destinatário',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          const SizedBox(height: 21),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            inputFormatters: [cepFormater],
                            initialValue: cep,
                            onChanged: (cepValue) {
                              setState(() {
                                cep = cepValue;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Celular com DDD',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
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
            child: IElevatedButton(
              text: 'continuar',
              isLoading: isLoading,
              textPadding: const EdgeInsets.all(13),
              fontSize: 18,
              fontWeight: FontWeight.w700,
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
