import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmara/Const.dart';
import 'package:tmara/OrderPage.dart';

class Eatcontainer extends StatelessWidget {
   Eatcontainer({super.key,required this.RasimlarRaqami,required this.FoodName,required this.Price,required this.MustFood});
 final  int RasimlarRaqami;
 final String FoodName;
 final double Price;
 final int MustFood;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          width: double.infinity,
          color: ContainerColor,
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 160,
                width: 200,
                padding: const EdgeInsets.only(left: 10, right: 8, top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      FoodName,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                           '\$$Price',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Container(
                          color: Colors.grey.withOpacity(0.3),
                          child:  Row(
                            children: [
                                InkWell(
                                   child: Icon(Icons.add),
                                onTap: (){},
                                ),
                              Text(
                                '$MustFood',
                                style: const TextStyle(fontSize: 16),
                              ),
                               InkWell(child: Icon(CupertinoIcons.minus),
                               onTap: (){},
                               ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          color: Colors.grey.withOpacity(0.1),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 21,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 21,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 21,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 21,
                              ),
                              Icon(
                                Icons.star_half_outlined,
                                color: Colors.amber,
                                size: 21,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30)),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderpage()));
                        },
                          child: const Text('Add to Cart')),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child:  CircleAvatar(
                  backgroundImage: AssetImage('assets/images/$RasimlarRaqami.jpg'),
                  radius: 80,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: 350,
          height: 1.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFF989898),
          ),
        ),
      ],
    );
  }
}
