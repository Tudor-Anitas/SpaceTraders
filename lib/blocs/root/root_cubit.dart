import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState(pageIndex: 0));
  PageController pageController = PageController(initialPage: 0);

  void changeTab(int newPageIndex) {
    emit(state.copyWith(pageIndex: newPageIndex));
    pageController.jumpToPage(newPageIndex);
  }
}
