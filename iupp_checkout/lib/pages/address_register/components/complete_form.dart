import 'package:flutter/material.dart';
import 'package:iupp_core/core.dart';

class CompleteForm extends StatefulWidget {
  const CompleteForm({
    Key? key,
    required this.updateFormStatus,
  }) : super(key: key);

  final Function(bool) updateFormStatus;

  @override
  _CompleteFormState createState() => _CompleteFormState();
}

class _CompleteFormState extends State<CompleteForm> {
  bool isFormValid = false;
  bool withoutNumber = false;

  String address = '';
  String number = '';
  String complement = '';
  String district = '';
  String city = '';
  String state = '';
  String referencePoint = '';
  String recipientName = '';
  String phone = '';

  bool updateFormStatus() {
    return address.isNotEmpty &&
        number.isNotEmpty &&
        district.isNotEmpty &&
        city.isNotEmpty &&
        state.isNotEmpty &&
        referencePoint.isNotEmpty &&
        recipientName.isNotEmpty &&
        phone.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Endereço',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (address) {
            setState(() {
              this.address = address;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  labelText: 'Número',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (number) {
                  setState(() {
                    this.number = number;
                    isFormValid = updateFormStatus();
                    widget.updateFormStatus(isFormValid);
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: Text('Sem número'),
            ),
            Expanded(
              child: Switch.adaptive(
                value: withoutNumber,
                onChanged: (withoutNumber) {
                  setState(() {
                    this.withoutNumber = withoutNumber;
                    isFormValid = updateFormStatus();
                    widget.updateFormStatus(isFormValid);
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Complemento (opcional)',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (complement) {
            setState(() {
              this.complement = complement;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Bairro',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (district) {
            setState(() {
              this.district = district;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Cidade',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (city) {
            setState(() {
              this.city = city;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Estado',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (state) {
            setState(() {
              this.state = state;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Ponto de referência',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (referencePoint) {
            setState(() {
              this.referencePoint = referencePoint;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            labelText: 'Nome do destinatário',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (recipientName) {
            setState(() {
              this.recipientName = recipientName;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
        const SizedBox(height: 21),
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          inputFormatters: [phoneFormater],
          decoration: InputDecoration(
            labelText: 'Celular com DDD',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onChanged: (phone) {
            setState(() {
              this.phone = phone;
              isFormValid = updateFormStatus();
              widget.updateFormStatus(isFormValid);
            });
          },
        ),
      ],
    );
  }
}
