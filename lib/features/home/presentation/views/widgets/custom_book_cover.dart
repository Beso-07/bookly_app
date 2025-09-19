import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({super.key, required this.bookImage});
  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: .6,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: bookImage,
          errorWidget: (context, url, error) => Icon(Icons.error, size: 50),
        ),
      ),
    );
  }
}
