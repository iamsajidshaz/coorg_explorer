import 'package:coorg/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:readmore/readmore.dart';

class DetailedPlace extends StatelessWidget {
  final String place;
  final String dest;
  final String imageUrl;
  final String imageOne,
      imageTwo,
      imageThree,
      facOne,
      facTwo,
      facThree,
      desc,
      lat,
      lang;
  const DetailedPlace(
      {Key? key,
      required this.place,
      required this.dest,
      required this.imageUrl,
      required this.imageOne,
      required this.imageTwo,
      required this.imageThree,
      required this.facOne,
      required this.facTwo,
      required this.facThree,
      required this.desc,
      required this.lat,
      required this.lang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            //
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //
            Positioned(
              left: 5,
              right: 5,
              top: 60,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15.0,
                        ),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.favorite_outline,
                          size: 15.0,
                        ),
                      ),
                    ]),
              ),
            ),
            //
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 350,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$place, $dest",
                            style: Styles.headLineStyle2,
                          ),
                          Icon(
                            Icons.place,
                            color: Colors.grey,
                          )
                        ],
                      ),

                      //
                      const Gap(10),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      //
                      const Gap(30),
                      Row(
                        children: [
                          Text(
                            "Faciliies",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black87),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.local_parking),
                                Text(facOne),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.food_bank),
                                Text(facTwo),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.description),
                                Text(facThree),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Text(
                            "Descripion",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black87),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: ReadMoreText(
                              desc,
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'show more',
                              trimExpandedText: 'show less',
                              moreStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Text(
                            "Gallery",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.black87),
                          ),
                        ],
                      ),
                      const Gap(20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: MediaQuery.of(context).size.width * .28,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage(imageOne),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                          Container(
                            height: 130,
                            width: MediaQuery.of(context).size.width * .28,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage(imageTwo),
                                  // AssetImage(
                                  //     "assets/images/coorg/abby.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                          Container(
                            height: 130,
                            width: MediaQuery.of(context).size.width * .28,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                  image: NetworkImage(imageThree),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                          ),
                        ],
                      ),

                      const Gap(30),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          textStyle: const TextStyle(fontSize: 24),
                          minimumSize: const Size.fromHeight(50),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () => MapsLauncher.launchCoordinates(
                          double.parse(lat.toString()),
                          double.parse(lang.toString()),
                          place,
                        ),
                        child: Text(
                          'Get Location',
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
