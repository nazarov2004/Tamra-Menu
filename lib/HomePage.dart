import 'package:flutter/material.dart';
import 'package:tmara/Methode.dart';

import 'AllMenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/2.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'ALL DAY MENU',
                style: TextStyle(color: Color(0xFFFBD7E4C), fontSize: 18),
              ),
              const SizedBox(
                height: 220,
              ),
               InkWell(onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>AllMenu()));
               },
                child: const Text('A La Carte Dining',
                style: TextStyle(
                    color: Color(0xFFFBD7E4C),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),),
              const Methode(
                Yozuv: 'Burgers & Sandwiches',
              ),
              const Methode(
                Yozuv: 'Europeans Mains',
              ),
              const Methode(
                Yozuv: 'International Grills',
              ),
              const Methode(
                Yozuv: 'Thai Specialities',
              ),
              const Methode(
                Yozuv: 'Indian Appetizer',
              ),
              const Methode(
                Yozuv: 'Desserts',
              ),
              const Methode(
                Yozuv: 'Selection of coffee & Tea',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
