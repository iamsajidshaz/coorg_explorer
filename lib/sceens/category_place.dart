import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryPlace extends StatefulWidget {
  const CategoryPlace({Key? key}) : super(key: key);

  @override
  State<CategoryPlace> createState() => _CategoryPlaceState();
}

class _CategoryPlaceState extends State<CategoryPlace> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.red,
          backgroundImage: AssetImage("assets/images/raja_seat.jpg"),
        ),
        Text(
          'Falls',
          style: Styles.headLineStyle4.copyWith(color: Colors.black87),
        ),
      ],
    );
  }
}
