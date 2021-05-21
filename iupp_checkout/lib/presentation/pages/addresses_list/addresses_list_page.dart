import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_checkout/presentation/widgets/checkout_address_app_bar.dart';
import 'package:iupp_checkout/presentation/widgets/widgets.dart';
import 'package:iupp_components/buttons/buttons.dart';
import 'package:iupp_components/iupp_components.dart';

class AddressesListPage extends StatelessWidget {
  const AddressesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: CheckoutAddressAppBar(step: 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 23),
            child: Text(
              'endereços',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Card(
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
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Antônio Coutinho',
                          style: TextStyle(
                            color: Color(0xFF494C57),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'excluir',
                          style: TextStyle(
                            color: Color(0xFF0070D4),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'editar',
                          style: TextStyle(
                            color: Color(0xFF0070D4),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Av. Brigadeiro Luís Antônio, 190 - Apto. 12 Bloco A -',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'São Paulo - SP - CEP 01318-002',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '(11) 99999-9999',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: IuppOutlinedButton(
                            text: 'entregar aqui',
                            onPressed: () {},
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            textPadding:
                                const EdgeInsets.symmetric(vertical: 12),
                            borderRadius: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Card(
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
              height: 72,
              child: Center(
                child: ListTile(
                  leading: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF23232E),
                    child: const Icon(
                      IuppIcons.icone_contorno_M_mais,
                      color: Color(0xFF00EEE6),
                    ),
                  ),
                  title: const Text(
                    'Adicionar endereço',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const Icon(
                    IuppIcons.icone_contorno_S_seta_direita,
                    color: Color(0xFF0070D4),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          const CheckoutFooterText(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
