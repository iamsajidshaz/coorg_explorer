import 'package:coorg/sceens/shopping_grid_single.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShoppingGrid extends StatelessWidget {
  const ShoppingGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ShoppingGridSingle(),
          ShoppingGridSingle(),
        ],
      ),
    );
  }
}
