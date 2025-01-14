/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({super.key});

  @override
  State<CounterWithFavBtn> createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  bool isFav = false;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildFavButton(),
        const SizedBox(width: 5), // Added spacing between buttons
        _buildLikeButton(),
      ],
    );
  }

  /// Builds the favorite button with toggle functionality
  Widget _buildFavButton() {
    return GestureDetector(
      onTap: () => _toggleFav(),
      child: Semantics(
        label: 'Favorite Button',
        button: true,
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: isFav ? Colors.white : Colors.red.shade600,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: isFav
              ? Lottie.asset(
                  "assets/icons/love.json",
                  // Use local Lottie files
                  animate: true,
                  repeat: false,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )
              : Image.asset(
                  "assets/icons/heart.png",
                  color: Colors.white,
                  width: 50,
                  height: 50,
                ),
        ),
      ),
    );
  }

  /// Builds the like button with toggle functionality
  Widget _buildLikeButton() {
    return GestureDetector(
      onTap: () => _toggleLike(),
      child: Semantics(
        label: 'Like Button',
        button: true,
        child: Lottie.network(
          "https://lottie.host/77a9f26f-e252-4f38-9207-cf1e72746033/CXIH2qrZH1.json", // Use local Lottie files
          width: 80,
          animate: isLike,
          reverse: isLike,
          height: 100,
        ),
      ),
    );
  }

  /// Toggles the favorite state
  void _toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  /// Toggles the like state
  void _toggleLike() {
    setState(() {
      isLike = !isLike;
    });
  }
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({super.key});

  @override
  State<CounterWithFavBtn> createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  bool isFav = false;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 5.w,
      children: [
        _buildFavButton(),
        _buildLikeButton(),
      ],
    );
  }

  /// Builds the favorite button with toggle functionality
  Widget _buildFavButton() {
    return GestureDetector(
      onTap: _toggleFav,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 50.w,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 1,
                style: BorderStyle.solid,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          isFav
              ? SizedBox(
                  height: 50.w,
                  width: 50.w,
                  child: Lottie.asset(
                    "assets/icons/love.json",
                    animate: true,
                    repeat: false,
                    fit: BoxFit.cover,
                  ),
                )
              : Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30.w,
                ),
        ],
      ),
    );
  }

  /// Builds the like button with toggle functionality
  Widget _buildLikeButton() {
    return GestureDetector(
      onTap: _toggleLike,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 50.w,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          isLike
              ? SizedBox(
                  height: 80.w,
                  width: 80.w,
                  child: Lottie.network(
                    "https://lottie.host/77a9f26f-e252-4f38-9207-cf1e72746033/CXIH2qrZH1.json",
                    animate: true,
                    repeat: false,
                    fit: BoxFit.cover,
                  ),
                )
              : const Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                ),
        ],
      ),
    );
  }

  /// Toggles the favorite state
  void _toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  /// Toggles the like state
  void _toggleLike() {
    setState(() {
      isLike = !isLike;
    });
  }
}
