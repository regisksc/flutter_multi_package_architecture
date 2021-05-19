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
    return SizedBox(
      width: 40,
      height: 40,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          icon,
          color: const Color(0xFF23232E),
        ),
      ),
    );
    /* return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: const Border.fromBorderSide(
          BorderSide(
            color: Color(0xFF23232E),
          ),
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: const Color(0xFF23232E),
        ),
        onPressed: onTap,
      ),
    ); */
  }
}
