import 'package:flutter/material.dart';
import 'package:iupp_components/buttons/buttons.dart';
import 'package:iupp_components/iupp_components.dart';

class SignInIuppContainer extends StatelessWidget {
  const SignInIuppContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 102,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 56,
                height: 33,
                color: const Color(0xFF23232E),
              ),
              Positioned(
                right: -15,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 17,
                  child: const Icon(
                    IuppIcons.iconeContornoUusuarioOutline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 28),
          const Expanded(
            child: Text.rich(
              TextSpan(
                text: 'entre',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: ' ou',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' crie uma conta',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' e tenha uma experiência ainda mais',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' iupp',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          IElevatedButton(
            text: 'entrar',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            textPadding: const EdgeInsets.all(13),
            onPressed: () {},
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}