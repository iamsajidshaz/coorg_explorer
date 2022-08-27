import 'package:coorg/sceens/explore_place_detailed.dart';
import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExplorePlace extends StatelessWidget {
  final Map<String, dynamic> places;
  const ExplorePlace({Key? key, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailedPlace(
                          place: places['place'].toString(),
                          dest: places['destination'].toString(),
                          imageUrl: places['image'].toString(),
                          imageOne: places['image_one'].toString(),
                          imageTwo: places['image_two'].toString(),
                          imageThree: places['image_three'].toString(),
                          facOne: places['fac1'].toString(),
                          facTwo: places['fac2'].toString(),
                          facThree: places['fac3'].toString(),
                          lat: places['lat'].toString(),
                          lang: places['lang'].toString(),
                          desc: places['desc'].toString(),
                        )),
              );
            },
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(places['image']),
                ),
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
              places['place'] + ', ' + places['destination'],
              style: Styles.headLineStyle4.copyWith(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
