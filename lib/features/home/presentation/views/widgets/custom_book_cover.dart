import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .6,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsPath.book1)),
        ),
      ),
    );
  }
}
