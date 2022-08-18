import 'package:coorg/sceens/category_place.dart';
import 'package:coorg/sceens/explore_place.dart';
import 'package:coorg/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          // top header

          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hi there',
                  style: TextStyle(fontSize: 28),
                ),
                FaIcon(
                  Icons.person,
                  size: 28,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'Where do you want',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'to go?',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const Gap(10),
          // search bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff4f6fd),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xffBFC205),
                  ),
                  Text(
                    'Search',
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
            ),
          ),
          const Gap(10),
          // header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore places',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print('ViewAll is tapped');
                  },
                  child: Text(
                    'View All',
                    style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Gap(15),
          // explore places
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ExplorePlace(),
                const Gap(10),
                ExplorePlace(),
                const Gap(10),
                ExplorePlace(),
                const Gap(10),
                ExplorePlace(),
                const Gap(10),
              ],
            ),
          ),

          // header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print('ViewAll is tapped');
                  },
                  child: Text(
                    'View All',
                    style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Gap(15),

          // category palces
          // explore places
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                CategoryPlace(),
                const Gap(10),
                CategoryPlace(),
                const Gap(10),
                CategoryPlace(),
                const Gap(10),
                CategoryPlace(),
                const Gap(10),
                CategoryPlace(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
