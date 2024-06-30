import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmara/Const.dart';
import 'package:tmara/EatContainer.dart';

class AllMenu extends StatelessWidget {
  const AllMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContainerColor,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 2, blurStyle: BlurStyle.normal)
                      ],
                      color: Color(0xFFFECEEF2),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 8,
                        ),
                        child: const Text(
                          'Your Order',
                          style: TextStyle(color: Color(0xFFF646464), fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 7, bottom: 3),
                            child: const Text(
                              'Total: 3 itmes',
                              style: TextStyle(color: Color(0xFFF646464)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 8, bottom: 8),
                            child: const Text(
                              '\$415',
                              style: TextStyle(
                                  color: Color(0xFFF2D2D2D), fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Eatcontainer(
                  RasimlarRaqami: 4,
                  FoodName: 'Tomato Consomme',
                  MustFood: 2,
                  Price: 98.9,
                ),
                Eatcontainer(
                  RasimlarRaqami: 5,
                  FoodName: 'Beetroot &\nSpinach Salad',
                  MustFood: 0,
                  Price: 78.9,
                ),
                Eatcontainer(
                  RasimlarRaqami: 6,
                  FoodName: 'Herbed Salmon\nRice Paper Rolls',
                  MustFood: 1,
                  Price: 98.9,
                ),
                Eatcontainer(
                  RasimlarRaqami: 7,
                  FoodName: 'Dark Chocolate\nOlive Oil Cake',
                  MustFood: 0,
                  Price: 108.9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
