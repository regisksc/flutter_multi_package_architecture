import 'package:flutter/material.dart';

class IupperAdvantageTile extends StatelessWidget {
  const IupperAdvantageTile({
    Key? key,
    required this.text,
    required this.color,
    this.isLast = false,
  }) : super(key: key);

  final String text;
  final Color color;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, bottom: 22),
      child: isLast
          ? Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 6,
                        left: 3,
                        child: Column(
                          children: [
                            Container(
                              width: 26,
                              height: 200,
                              color: const Color(0xFF23232E),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: color,
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          : ListTile(
              leading: CircleAvatar(
                radius: 16,
                backgroundColor: color,
              ),
              title: Text(
                text,
              ),
            ),
    );
  }
}
