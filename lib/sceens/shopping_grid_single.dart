import 'package:coorg/utils/app_layout.dart';
import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShoppingGridSingle extends StatelessWidget {
  const ShoppingGridSingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: MediaQuery.of(context).size.width * .9 / 2,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      // margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/category/spices.jpg"),
              ),
            ),
          ),
          //
          const Gap(15),
          Text(
            "Testttt",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            "hsgds sdh",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
