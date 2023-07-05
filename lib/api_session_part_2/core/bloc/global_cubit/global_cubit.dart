import 'package:flutter_bloc/flutter_bloc.dart';

import '../../database/cache/cache_helper.dart';
import '../../services/service_locator.dart';
import '../../utils/app_enums.dart';
import 'global_state.dart';
import 'package:flutter/material.dart';

class GlobalCubit extends Cubit<GlobalStates> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of<GlobalCubit>(context);

//! app theme
  bool isLightTheme = false;
  void changeAppTheme() async {
    isLightTheme = !isLightTheme;
    await sl<CacheHelper>()
        .saveData(key: MySharedKeys.theme.name, value: isLightTheme);

    emit(ChangeLocalState(theme: isLightTheme));
  }

  void getAppTheme() {
    isLightTheme =
        sl<CacheHelper>().getData(key: MySharedKeys.theme.name) ?? true;
    // emit(GetAppThemeState());
  }

//! localizatiuon
  bool isArabic = false;
  void getSavedLanguage() {
    final cachedLanguageCode = sl<CacheHelper>().getCachedLanguage();
    emit(ChangeLocalState(
        locale: Locale(cachedLanguageCode), theme: isLightTheme));
  }

  Future<void> changeLanguage(String languageCode) async {
    isArabic = !isArabic;
    await sl<CacheHelper>().cacheLanguage(languageCode);
    emit(ChangeLocalState(locale: Locale(languageCode), theme: isLightTheme));
  }
}
