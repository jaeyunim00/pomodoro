import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String price;
  final String cur;
  final Color bgColor;
  final Color textColor;
  final IconData cur_icon;

  const MyCard({
    super.key,
    required this.name,
    required this.price,
    required this.cur,
    required this.bgColor,
    required this.textColor,
    required this.cur_icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      cur,
                      style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: Icon(
                  cur_icon,
                  color: textColor,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
