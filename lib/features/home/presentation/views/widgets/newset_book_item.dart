import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewsetBookItem extends StatelessWidget {
  const NewsetBookItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 180,
            child: CustomBookCover(
              bookImage: book.volumeInfo.imageLinks.thumbnail,
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    book.volumeInfo.title!,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kPlayfairDisplay,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(book.volumeInfo.authors![0], style: Styles.textStyle14),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Free", style: Styles.textStyle20),
                    BookRating(
                      language: book.volumeInfo.language!,
                      pageCount: book.volumeInfo.pageCount!,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
