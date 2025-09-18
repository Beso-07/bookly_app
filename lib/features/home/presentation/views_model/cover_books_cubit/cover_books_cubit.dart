import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'cover_books_state.dart';

class CoverBooksCubit extends Cubit<CoverBooksState> {
  CoverBooksCubit() : super(CoverBooksInitial());
}
