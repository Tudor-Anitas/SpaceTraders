part of 'root_cubit.dart';

class RootState extends Equatable {
  final int pageIndex;

  const RootState({required this.pageIndex});

  @override
  List<Object?> get props => [pageIndex];

  RootState copyWith({int? pageIndex}) {
    return RootState(pageIndex: pageIndex ?? this.pageIndex);
  }
}
