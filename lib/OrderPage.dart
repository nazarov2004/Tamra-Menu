import 'package:flutter/material.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/backimage.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 460,
            width: 310,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFF4DECD)),
            child: Container(
              padding: const EdgeInsets.all(20),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),

                  const Center(
                    child: Text(
                      'Your Order',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 70,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tomato Consomme',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '\$98.9',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const Text(
                    'Quantity: 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Herbed Salmon\nRice Paper Rolls',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '\$108.9',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const Text(
                    'Quantity: 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    width: 350,
                    height: 1.5,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFF989898),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Total: 3 itmes',style: TextStyle(fontSize: 16),),
                    Text('\$415.0',style: TextStyle(fontSize: 25),)
                  ],)
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
