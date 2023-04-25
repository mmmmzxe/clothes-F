// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
     required this.pra,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title ,pra;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 300,
        height: 350,
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 160,
              
              ),
            ),
            const SizedBox(height: defaultPadding ),
            Row(
              children: [
                Column(
                  children: [
                    
                    Container(
                      child: Text(
                        title,
                        style: const TextStyle(color: Colors.black),
                      ),
                      
                    ),
                    SizedBox(height: 13,),
                    Container(
                      child: Text(
                        pra,
                        style: const TextStyle(color: Color.fromARGB(71, 0, 0, 0)),
                      ),
                      
                    ),
                    SizedBox(height: 13,),
                    Row(
                  
                      children: [
                        
                        Text(
                          "\$" + price.toString(),
                          // ignore: deprecated_member_use
                          style: TextStyle(color: primaryColor),
                        ),
                        SizedBox(width: 120,),
                        IconButton(
                          icon:Icon(Icons.shopping_cart_checkout),color:Color.fromARGB(255, 196, 85, 109) ,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              
            )
            
          ],
          
        ),
      ),
    );
  }
}
