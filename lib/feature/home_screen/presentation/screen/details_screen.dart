import 'package:el3asema_news/feature/home_screen/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/size_config.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({
    super.key, 
    required this.cubit, 
    required this.index
  });

  final HomeCubit cubit; // Assuming "Movies" represents articles here.
  final int index;

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderImage(size),
            _buildArticleContent(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      title: Center(
        child: Image.asset(
          "assets/images/logo.png",
          scale: 20,
        ),
      ),
      backgroundColor: Colors.grey[200],
      elevation: 0,
      leading: IconButton(
        icon: Image.asset('assets/icons/back.png', scale: 20.h),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Widget _buildHeaderImage(Size size) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  cubit.newsResponse?.articles[index].urlToImage ?? ""),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 5,
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
              _formatTextWithLineBreaks(cubit.newsResponse?.articles[index].title ?? ""),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildArticleContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            _formatTextWithLineBreaks(cubit.newsResponse?.articles[index].description ?? ""),
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

  /// Formats the text with line breaks after every 6 words.
  String _formatTextWithLineBreaks(String text, {int wordLimit = 6}) {
    List<String> words = text.split(' ');
    StringBuffer formattedText = StringBuffer();

    for (int i = 0; i < words.length; i++) {
      formattedText.write(words[i]);
      if ((i + 1) % wordLimit == 0 && i != words.length - 1) {
        formattedText.write('\n');
      } else {
        formattedText.write(' ');
      }
    }

    return formattedText.toString().trim();
  }
}
