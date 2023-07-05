// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:leap_tech_app_chef/core/services/service_locator.dart';

// import '../../database/cache/cache_helper.dart';
// import 'locale_state.dart';

// class LocaleCubit extends Cubit<LocaleState> {
//   LocaleCubit() : super(Initial());

//   static LocaleCubit get(context) => BlocProvider.of(context);
//   void getSavedLanguage() {
//     final cachedLanguageCode = serviceLocator<CacheHelper>().getCachedLanguage();
//     emit(ChangeLocalState(locale: Locale(cachedLanguageCode)));
//   }

//   Future<void> changeLanguage(String languageCode) async {
//     await serviceLocator<CacheHelper>().cacheLanguage(languageCode);
//     emit(ChangeLocalState(locale: Locale(languageCode)));
//   }

// }

