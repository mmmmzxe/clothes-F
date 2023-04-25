// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Product {
  final String image, title ,pra;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
     required this.pra,
    required this.price ,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/5.png",
    title: "Long Sleeve Shirts",
    pra:"lorem loydz mouyte moiytvn",
    price: 165 ,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    pra:"lorem loydz mouyte moiytvn",
    price: 99,
     bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    pra:"lorem loydz mouyte moiytvn",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    pra:"lorem loydz mouyte moiytvn",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    
  ),
  Product(
    image: "assets/images/3.png",
    title: "Casual Nolin",
    pra:"lorem loydz mouyte moiytvn",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    
  ),
  Product(
    image: "assets/images/2.png",
    title: "Casual Nolin",
    pra:"lorem loydz mouyte moiytvn",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    
  ),
];
