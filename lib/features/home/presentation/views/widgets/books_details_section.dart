import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class BooksDtailsSection extends StatelessWidget {
  const BooksDtailsSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookCover(
            bookImage: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          //height: 80,
          child: Text(
            book.volumeInfo.title!,
            textAlign: TextAlign.center,
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 15),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          language: book.volumeInfo.language!,
          pageCount: book.volumeInfo.pageCount!,
        ),
        const SizedBox(height: 15),
        const BookActions(),
      ],
    );
  }
}
