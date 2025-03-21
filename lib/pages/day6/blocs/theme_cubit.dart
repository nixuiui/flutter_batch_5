import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day6/blocs/theme_state.dart';
import 'package:flutter_batch_5/pages/day7/local_storage/theme_local_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {

  late final ThemeLocalStorage themeLocalStorage;

  ThemeCubit(
    this.themeLocalStorage
  ) : super(ThemeState());

  void init() {
    emit(state.copyWith(
      themeMode: themeLocalStorage.getThemeMode()
    ));
  }

  void setThemeMode(ThemeMode themeMode) {
    themeLocalStorage.setThemeMode(themeMode);
    emit(state.copyWith(
      themeMode: themeMode
    ));
  }

}