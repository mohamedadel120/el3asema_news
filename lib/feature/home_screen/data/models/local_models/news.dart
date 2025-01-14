import 'package:flutter/material.dart';

class News {
  final String image, title, description;
  final int size, id;
  final Color color;

  News(
      {required this.image,
      required this.title,
      required this.description,
      required this.size,
      required this.id,
      required this.color});
}

List<News> news = [
  News(
      id: 1,
      title: "news home",
      size: 12,
      description: dummyText,
      image: "assets/images/news.jpg",
      color: const Color(0xFFF8F9FA)),
  News(
      id: 2,
      title: "news home",
      size: 8,
      description: dummyText,
      image: "assets/images/news.jpg",
      color: const Color(0xFFF8F9FA)),
  News(
      id: 3,
      title: "news home ",
      size: 10,
      description: dummyText,
      image: "assets/images/news.jpg",
      color: const Color(0xFFF8F9FA)),
  News(
      id: 4,
      title: "news home",
      size: 11,
      description: dummyText,
      image: "assets/images/news.jpg",
      color: const Color(0xFFF8F9FA)),
  News(
      id: 5,
      title: "news home",
      size: 12,
      description: dummyText,
      image: "assets/images/news.jpg",
      color: const Color(0xFFF8F9FA)),
  News(
    id: 6,
    title: "news home",
    size: 12,
    description: dummyText,
    image: "assets/images/news.jpg",
    color: const Color(0xFFF8F9FA),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
