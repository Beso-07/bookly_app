part of 'cover_books_cubit.dart';

sealed class CoverBooksState extends Equatable {
  const CoverBooksState();

  @override
  List<Object> get props => [];
}

final class CoverBooksInitial extends CoverBooksState {}

final class CoverBooksLoading extends CoverBooksState {}

final class CoverBooksFailure extends CoverBooksState {
  final String errMessage;

  const CoverBooksFailure(this.errMessage);
}

final class CoverBooksSuccess extends CoverBooksState {
  final List<BookModel> books;
  const CoverBooksSuccess(this.books);
}
