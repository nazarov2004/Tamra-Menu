import 'package:flutter/material.dart';

class Methode extends StatelessWidget {
  const Methode({super.key,required this.Yozuv});
final String Yozuv;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5),
          width: 180,
          height: 1.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFF989898),
          ),
        ),
        InkWell(
          onTap: () {},
          child:  Text(
            Yozuv,
            style: const TextStyle(
                color: Color(0xFFFBD7E4C),
                fontSize: 18,
                ),
          ),
        ),

      ],
    );
  }
}
