import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_cover.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: CustomBookCover(),
          ),
          const SizedBox(height: 30),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 15),
          const BookActions(),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like ',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),

          SimilarBooksListView(),
        ],
      ),
    );
  }
}


