import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day6/blocs/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {

  ThemeCubit() : super(ThemeState());

  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(
      themeMode: themeMode
    ));
  }

}