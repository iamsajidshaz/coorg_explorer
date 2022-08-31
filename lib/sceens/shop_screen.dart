import 'package:coorg/sceens/shopping_grid.dart';
import 'package:coorg/sceens/shopping_list.dart';
import 'package:coorg/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/chikli_main.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/abby_main.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/iruppu_main.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/mallalli_main.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/abby_one.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/mallalli_one.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/chikli_main.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/abby_two.jpg",
    "https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/chikli_two.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          const Gap(50),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffffffff),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Colors.green,
                  ),
                  Text(
                    'Search',
                    style: Styles.headLineStyle4.copyWith(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.network(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          const Gap(10),
          // header
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: Styles.headLineStyle2,
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                // ShoppingGrid(),
                // const Gap(30),
                // ShoppingGrid(),
                // const Gap(30),
                // ShoppingGrid(),
                // const Gap(30),
                ShoppingList(
                    name: 'Spices',
                    lines: 'Organic spcies origin from Coorg',
                    imageUrl: 'spices.jpg'),
                const Gap(30),
                ShoppingList(
                    name: 'Chocolates',
                    lines: 'Homemade Chocolates from Coorg',
                    imageUrl: 'chocicoorg.jpg'),
                const Gap(30),
                ShoppingList(
                    name: 'Coffee',
                    lines: 'Coffee from the land of Coorg',
                    imageUrl: 'coffeebean.jpg'),
                const Gap(30),
                ShoppingList(
                    name: 'Wines',
                    lines: 'Homemade wines at the best price',
                    imageUrl: 'wines.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
