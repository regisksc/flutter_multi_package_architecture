import 'package:flutter/material.dart';

class CartActionButton extends StatelessWidget {
  const CartActionButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    /*  return SizedBox(
      width: 40,
      height: 40,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Icon(
          icon,
          color: const Color(0xFF23232E),
        ),
      ),
    ); */
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: const Border.fromBorderSide(
            BorderSide(
              color: Color(0xff23232E),
            ),
          ),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: const Color(0xff23232E),
          ),
        ),
      ),
    );
  }
}
