import 'package:flutter/material.dart';

class IFooter extends StatelessWidget {
  const IFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF353545),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
        child: Column(
          children: const [
            UsefulLinks(),
            SizedBox(height: 24),
            Divider(
              color: Color(0xFF7C7B8B),
            ),
            SizedBox(height: 24),
            ProductsInfo(),
            SizedBox(height: 24),
            InstitutionalInfo(),
            SizedBox(height: 24),
            PrivacyPolicyAndUse(),
            SizedBox(height: 24),
            AllRightsReserved(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class AllRightsReserved extends StatelessWidget {
  const AllRightsReserved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          '© 2021 IUPP - Todos os direitos reservados.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFE1E4EC),
          ),
        ),
      ],
    );
  }
}

class InstitutionalInfo extends StatelessWidget {
  const InstitutionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFFE1E4EC),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Banco Itaucard S.A.',
          style: textStyle,
        ),
        Text(
          'CNPJ/MF sob o nº 17.192.451/0001-70',
          style: textStyle,
        ),
        Text(
          '''Praça Alfredo Egydio de Souza Aranha, 100, Torre Olavo Setubal, 7º andar - Parque Jabaquara - São Paulo - SP''',
          style: textStyle,
        ),
      ],
    );
  }
}

class PrivacyPolicyAndUse extends StatelessWidget {
  const PrivacyPolicyAndUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Color(0xFFE1E4EC),
    );
    return Row(
      children: const [
        Text(
          'Políticas de privacidade',
          style: textStyle,
        ),
        Spacer(),
        Text(
          'Termos de uso',
          style: textStyle,
        ),
        Spacer(),
      ],
    );
  }
}

class ProductsInfo extends StatelessWidget {
  const ProductsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''O catálogo é atualizado periódica e automaticamente pelos parceiros, e os produtos e preços poderão sofrer alterações durante a navegação, sem aviso prévio, devendo ser consultados pelo interessado no momento da conclusão efetiva do resgate.''',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFFE1E4EC),
      ),
    );
  }
}

class UsefulLinks extends StatelessWidget {
  const UsefulLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 14,
      color: Color(0xFFE1E4EC),
      fontWeight: FontWeight.w700,
    );
    const defaultSpacing = SizedBox(height: 24);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Sobre o iupp', style: textStyle),
            defaultSpacing,
            Text('Minha conta', style: textStyle),
            defaultSpacing,
            Text('Meus pedidos', style: textStyle),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Fale com a gente', style: textStyle),
            defaultSpacing,
            Text('Dúvidas frequentes', style: textStyle),
            defaultSpacing,
            Text('Telefones úteis', style: textStyle),
          ],
        ),
      ],
    );
  }
}
