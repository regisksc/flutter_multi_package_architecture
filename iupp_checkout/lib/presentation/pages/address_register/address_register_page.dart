import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iupp_components/components/components.dart';
import 'package:iupp_core/core.dart';

import '../../presentation.dart';
import '../../widgets/molecules/appbars/checkout_app_bar.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class AddressRegisterPage extends StatefulWidget {
  const AddressRegisterPage({Key? key}) : super(key: key);

  @override
  _AddressRegisterPageState createState() => _AddressRegisterPageState();
}

class _AddressRegisterPageState extends State<AddressRegisterPage> {
  String cep = '';
  bool cepChoosed = false;
  bool isLoading = false;
  bool isFormValid = false;

  @override
  Widget build(BuildContext context) {
    return CheckoutScaffold(
      title: 'onde deseja receber seu\npedido?',
      appBar: CheckoutAppBar(step: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
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
                  bottom: SizeConstants.pageSidePadding,
                  left: SizeConstants.pageSidePadding,
                  right: SizeConstants.pageSidePadding,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CepFormField(
                      cep: cep,
                      onChanged: (value) => setState(() => cep = value),
                    ),
                    if (cepChoosed)
                      CompleteForm(
                        updateFormStatus: (isFormValid) {
                          setState(() {
                            this.isFormValid = isFormValid;
                          });
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: SizeConstants.pageSidePadding),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: SizeConstants.pageSidePadding,
              left: SizeConstants.pageSidePadding,
              right: SizeConstants.pageSidePadding,
            ),
            child: cepChoosed
                ? ConfirmRegisterButton(
                    isLoading: isLoading,
                    onPressed: isFormValid
                        ? () async {
                            setState(() {
                              isLoading = true;
                            });
                            await Future.delayed(const Duration(seconds: 2));
                            NavigatorService().navigateTo('address-list');
                          }
                        : null,
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
        ],
      ),
    );
  }
}
