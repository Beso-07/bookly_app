import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.language,
    required this.pageCount,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String language;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        //const Icon(Icons.star, color: Colors.amber, size: 23),
        const SizedBox(width: 8),
        Text(language, style: Styles.textStyle20),
        const SizedBox(width: 10),
        Opacity(
          opacity: .5,
          child: Text(
            "$pageCount page",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
