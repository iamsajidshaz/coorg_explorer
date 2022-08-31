import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShoppingList extends StatelessWidget {
  final String name, lines, imageUrl;
  const ShoppingList(
      {Key? key,
      required this.name,
      required this.lines,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
          child: Container(
            // margin: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage("assets/images/category/$imageUrl"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 20,
          child: ClipRect(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Styles.headLineStyle1.copyWith(color: Colors.white),
                ),
                const Gap(10),
                Text(
                  lines,
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
