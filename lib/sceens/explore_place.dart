import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExplorePlace extends StatelessWidget {
  const ExplorePlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage("assets/images/raja_seat.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            'Raja Seat, Madikeri',
            style: Styles.headLineStyle4.copyWith(color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
