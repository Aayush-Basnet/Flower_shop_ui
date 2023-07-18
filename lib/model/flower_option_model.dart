import 'package:flutter/material.dart';

class Option {
  late String flowerimage;
  String title;
  double price;

  Option({required this.flowerimage, required this.title, required this.price});
}

final options = [
  Option(
    flowerimage: 'assets/flowerimages/flower0.jpeg',
    title: 'Red Rose',
    price: 16,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower1.webp',
    title: 'Lily',
    price: 15.9,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower2.jpeg',
    title: 'Blue Crocuses',
    price: 12.95,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower3.webp',
    title: 'Birthday Special',
    price: 35.99,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower4.jpg',
    title: 'Morning glory',
    price: 15.59,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower5.jpeg',
    title: 'Collections',
    price: 30,
  ),
  Option(
    flowerimage: 'assets/flowerimages/flower6.jpeg',
    title: 'Dahila',
    price: 10,
  ),
];
