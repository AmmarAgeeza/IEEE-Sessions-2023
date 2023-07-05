import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../utils/app_fonts.dart';
import '../utils/app_styles.dart';
import '../utils/app_values.dart';

ThemeData getApplicationLightTheme() {
  return ThemeData(
    // main colors
    primaryColor: AppColors.primary,
    // primaryColorLight: AppColors.primary,
    // primaryColorDark: AppColors.darkPrimary,
    // disabledColor => button when is not clickables
    disabledColor: AppColors.grey1,
    splashColor: AppColors.lightPrimary, // ripple effect color
    // cardview theme
    cardTheme: const CardTheme(
      color: AppColors.white,
      shadowColor: AppColors.grey,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      // centerTitle: true,
      // color: AppColors.primary,
      elevation: AppSize.s4,
      shadowColor: AppColors.lightPrimary,
      titleTextStyle: getRegularStyle(
        fontSize: AppFonts.s22,
        color: AppColors.white,
      ),
    ),
    // button theme
    buttonTheme: const ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: AppColors.grey1,
        buttonColor: AppColors.primary,
        splashColor: AppColors.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: AppColors.white,
          fontSize: AppFonts.s17,
        ),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),

    //* text theme
    textTheme: TextTheme(
      //titles like welcome
      displayLarge: getSemiBoldStyle(
        color: AppColors.white,
        fontSize: AppFonts.s22,
      ),
      headlineLarge: getSemiBoldStyle(
        color: AppColors.black,
        fontSize: AppFonts.s22,
      ),
      headlineMedium: getRegularStyle(
        color: AppColors.grey,
        fontSize: AppFonts.s16,
      ),
      /*
      titleMedium: getMediumStyle(
        color: AppColors.primary,
        fontSize: AppFonts.s16,
      ),
      titleSmall: getRegularStyle(
        color: AppColors.white,
        fontSize: AppFonts.s16,
      ),
      bodyLarge: getRegularStyle(
        color: AppColors.grey1,
      ),
      bodySmall: getRegularStyle(
        color: AppColors.grey,
      ),
      bodyMedium: getRegularStyle(
        color: AppColors.grey2,
        fontSize: AppFonts.s12,
      ),
      labelSmall: getBoldStyle(
        color: AppColors.primary,
        fontSize: AppFonts.s12,
      ),
      labelMedium: getRegularStyle(
        color: AppColors.grey1,
      ),*/
    ),

    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.black,
        elevation: AppSize.s0,
        textStyle: getBoldStyle(
          fontSize: AppSize.s14,
          color: AppColors.black,
        ),
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(
        color: AppColors.grey,
        fontSize: AppFonts.s14,
      ),
      labelStyle: getMediumStyle(
        color: AppColors.grey,
        fontSize: AppFonts.s14,
      ),
      errorStyle: getRegularStyle(
        color: AppColors.error,
      ),

      // enabled border style
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),

      // focused border style
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),

      // error border style
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.error,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      // focused border style
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
    // label style
  );
}
ThemeData getApplicationDarkTheme() {
  return ThemeData(
    // main colors
    primaryColor: AppColors.darkGrey,
    // primaryColorLight: AppColors.primary,
    // primaryColorDark: AppColors.darkPrimary,
    // disabledColor => button when is not clickables
    disabledColor: AppColors.grey1,
    splashColor: AppColors.lightPrimary, // ripple effect color

    // cardview theme
    cardTheme: const CardTheme(
      color: AppColors.white,
      shadowColor: AppColors.grey,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      // centerTitle: true,
      color: AppColors.darkGrey,
      elevation: AppSize.s4,
      shadowColor: AppColors.lightPrimary,
      titleTextStyle: getRegularStyle(
        fontSize: AppFonts.s16,
        color: AppColors.white,
      ),
    ),
    // button theme
    buttonTheme:  ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),),
        disabledColor: AppColors.grey1,
        buttonColor: AppColors.primary,
        splashColor: AppColors.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: AppColors.white,
          fontSize: AppFonts.s17,
        ),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),

    //* text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
        color: AppColors.black,
        fontSize: AppFonts.s22,
      ),
      headlineLarge: getSemiBoldStyle(
        color: AppColors.darkGrey,
        fontSize: AppFonts.s16,
      ),
      headlineMedium: getRegularStyle(
        color: AppColors.darkGrey,
        fontSize: AppFonts.s14,
      ),
      titleMedium: getMediumStyle(
        color: AppColors.primary,
        fontSize: AppFonts.s16,
      ),
      titleSmall: getRegularStyle(
        color: AppColors.white,
        fontSize: AppFonts.s16,
      ),
      bodyLarge: getRegularStyle(
        color: AppColors.grey1,
      ),
      bodySmall: getRegularStyle(
        color: AppColors.grey,
      ),
      bodyMedium: getRegularStyle(
        color: AppColors.grey2,
        fontSize: AppFonts.s12,
      ),
      labelSmall: getBoldStyle(
        color: AppColors.primary,
        fontSize: AppFonts.s12,
      ),
    ),

    //text button theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.black,
        elevation: AppSize.s0,
        textStyle: getBoldStyle(
          fontSize: AppSize.s14,
          color: AppColors.black,
        ),
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(
        color: AppColors.grey,
        fontSize: AppFonts.s14,
      ),
      labelStyle: getMediumStyle(
        color: AppColors.grey,
        fontSize: AppFonts.s14,
      ),
      errorStyle: getRegularStyle(
        color: AppColors.error,
      ),

      // enabled border style
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),

      // focused border style
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),

      // error border style
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.error,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      // focused border style
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
    // label style
  );
}
