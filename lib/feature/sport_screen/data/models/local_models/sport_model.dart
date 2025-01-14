import 'package:flutter/material.dart';

class Sport {
  final String image, title, description;
  final int size, id;
  final Color color;

  Sport(
      {required this.image,
      required this.title,
      required this.description,
      required this.size,
      required this.id,
      required this.color});
}

List<Sport> sport = [
  Sport(
      id: 1,
      title: "sport home",
      size: 12,
      description: dummyText,
      image: "assets/images/sport.jpg",
      color: const Color(0xFFF8F9FA)),
  Sport(
      id: 2,
      title: "sport home",
      size: 8,
      description: dummyText,
      image: "assets/images/sport.jpg",
      color: const Color(0xFFF8F9FA)),
  Sport(
      id: 3,
      title: "sport home ",
      size: 10,
      description: dummyText,
      image: "assets/images/sport.jpg",
      color: const Color(0xFFF8F9FA)),
  Sport(
      id: 4,
      title: "sport home",
      size: 11,
      description: dummyText,
      image: "assets/images/sport.jpg",
      color: const Color(0xFFF8F9FA)),
  Sport(
      id: 5,
      title: "sport home",
      size: 12,
      description: dummyText,
      image: "assets/images/sport.jpg",
      color: const Color(0xFFF8F9FA)),
  Sport(
    id: 6,
    title: "sport home",
    size: 12,
    description: dummyText,
    image: "assets/images/sport.jpg",
    color: const Color(0xFFF8F9FA),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
