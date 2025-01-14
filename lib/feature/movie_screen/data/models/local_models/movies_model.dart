import 'package:flutter/material.dart';

class Movies {
  final String image, title, description;
  final int size, id;
  final Color color;

  Movies(
      {required this.image,
      required this.title,
      required this.description,
      required this.size,
      required this.id,
      required this.color});
}

List<Movies> movies = [
  Movies(
      id: 1,
      title: "movies home",
      size: 12,
      description: dummyText,
      image: "assets/images/movies.jpg",
      color: const Color(0xFFF8F9FA)),
  Movies(
      id: 2,
      title: "movies home",
      size: 8,
      description: dummyText,
      image: "assets/images/movies.jpg",
      color: const Color(0xFFF8F9FA)),
  Movies(
      id: 3,
      title: "movies home ",
      size: 10,
      description: dummyText,
      image: "assets/images/movies.jpg",
      color: const Color(0xFFF8F9FA)),
  Movies(
      id: 4,
      title: "movies home",
      size: 11,
      description: dummyText,
      image: "assets/images/movies.jpg",
      color: const Color(0xFFF8F9FA)),
  Movies(
      id: 5,
      title: "movies home",
      size: 12,
      description: dummyText,
      image: "assets/images/movies.jpg",
      color: const Color(0xFFF8F9FA)),
  Movies(
    id: 6,
    title: "movies home",
    size: 12,
    description: dummyText,
    image: "assets/images/movies.jpg",
    color: const Color(0xFFF8F9FA),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
