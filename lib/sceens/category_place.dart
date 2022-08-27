import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryPlace extends StatelessWidget {
  final Map<String, dynamic> pcategory;
  const CategoryPlace({Key? key, required this.pcategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.red,
          backgroundImage:
              AssetImage("assets/images/category/${pcategory['image']}"),
        ),
        Text(
          pcategory['name'],
          style: Styles.headLineStyle4.copyWith(color: Colors.black),
        ),
      ]),
    );
  }
}
