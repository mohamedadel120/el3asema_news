import 'package:flutter/material.dart';

class Fashion {
  final String image, title, description;
  final int size, id;
  final Color color;

  Fashion(
      {required this.image,
      required this.title,
      required this.description,
      required this.size,
      required this.id,
      required this.color});
}

List<Fashion> fashion = [
  Fashion(
      id: 1,
      title: "fashion home",
      size: 12,
      description: dummyText,
      image: "assets/images/art.jpg",
      color: const Color(0xFFF8F9FA)),
  Fashion(
      id: 2,
      title: "fashion home",
      size: 8,
      description: dummyText,
      image: "assets/images/art.jpg",
      color: const Color(0xFFF8F9FA)),
  Fashion(
      id: 3,
      title: "fashion home ",
      size: 10,
      description: dummyText,
      image: "assets/images/art.jpg",
      color: const Color(0xFFF8F9FA)),
  Fashion(
      id: 4,
      title: "fashion home",
      size: 11,
      description: dummyText,
      image: "assets/images/art.jpg",
      color: const Color(0xFFF8F9FA)),
  Fashion(
      id: 5,
      title: "fashion home",
      size: 12,
      description: dummyText,
      image: "assets/images/art.jpg",
      color: const Color(0xFFF8F9FA)),
  Fashion(
    id: 6,
    title: "fashion home",
    size: 12,
    description: dummyText,
    image: "assets/images/art.jpg",
    color: const Color(0xFFF8F9FA),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
