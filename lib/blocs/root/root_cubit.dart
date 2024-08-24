import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState(pageIndex: 0));

  void changeTab(int newPageIndex) {
    emit(state.copyWith(pageIndex: newPageIndex));
  }
}
