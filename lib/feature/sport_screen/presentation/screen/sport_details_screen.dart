import 'package:el3asema_news/feature/sport_screen/data/models/local_models/sport_model.dart';
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/size_config.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';

class SportDetailsScreen extends StatelessWidget {
  const SportDetailsScreen({super.key, required this.sport});
  final Sport sport;

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: _buildAppBar(size, context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildHeaderSection(size),
            _buildContentSection(size),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(Size size, BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: Center(
        child: Image.asset("assets/images/logo.png", scale: 20),
      ),
      backgroundColor: Colors.grey[200],
      elevation: 0,
      leading: IconButton(
        icon: Image.asset('assets/icons/back.png'),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        SizedBox(width: size.width * 0.09),
      ],
    );
  }

  Widget _buildHeaderSection(Size size) {
    return Stack(
      children: [
        FashionTitleWithImage(sport: sport, size: size),
        Container(
          margin: EdgeInsets.only(top: size.height * 0.3),
          padding: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContentSection(Size size) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          DescriptionFashion(sport: sport),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  FashionTitleWithImage({required Sport sport, required Size size}) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(sport.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              sport.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  DescriptionFashion({required Sport sport}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            sport.description * 10,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CounterWithFavBtn(),
              IconButton(
                icon: const Icon(Icons.share, color: Colors.black),
                onPressed: () {
                  // Implement sharing functionality
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
