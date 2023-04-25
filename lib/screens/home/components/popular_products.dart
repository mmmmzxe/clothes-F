// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/screens/home/components/product_card.dart';
import 'package:flutter_application_1/screens/home/components/section_title.dart';

// ignore: unused_import
import '../../../constants.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SectionTitle(
            title: "Popular",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    children: [
                      Container(
                        child: ProductCard(
                          title: demo_product[index].title,
                          pra: demo_product[index].pra,
                          image: demo_product[index].image,
                          price: demo_product[index].price,
                          bgColor: demo_product[index].bgColor,
                          press: () {},
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
