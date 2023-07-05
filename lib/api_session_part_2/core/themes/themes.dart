import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/app_colors.dart';


class Themes {
  //..............light Theme
  static ThemeData lightTheme = ThemeData(
      colorScheme:  const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.primary,
      ),
      iconTheme:  const IconThemeData(color: AppColors.primary),
      buttonTheme:  const ButtonThemeData(
        buttonColor: AppColors.darkGrey,
      ),
      textSelectionTheme:
           const TextSelectionThemeData(cursorColor: AppColors.white),
      scaffoldBackgroundColor: AppColors.primary,
      appBarTheme:           const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primary,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          )),
      canvasColor: AppColors.primary,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: AppColors.darkGrey,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white.withOpacity(0.5),
        elevation: 0,
      ),
      floatingActionButtonTheme:
           const FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
      sliderTheme:  const SliderThemeData(
        inactiveTickMarkColor: Colors.transparent,
        activeTickMarkColor: Colors.transparent,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.white),
        fillColor: MaterialStateProperty.all(AppColors.primary),
      ),
      dialogBackgroundColor: AppColors.primary,
      toggleButtonsTheme: const ToggleButtonsThemeData(
          selectedColor: AppColors.primary,
          selectedBorderColor: Colors.transparent,
          borderColor: Colors.transparent,
          fillColor: Colors.transparent));

  //..............dark Theme

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkGrey,
      secondary: AppColors.primary,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.white),
    iconTheme: const IconThemeData(color: AppColors.white),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.darkGrey,
    ),
    scaffoldBackgroundColor: AppColors.darkGrey,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.darkGrey,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        )),
    canvasColor: AppColors.primary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.darkGrey,
      elevation: 0,
      unselectedItemColor: AppColors.darkGrey.withOpacity(0.5),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
    sliderTheme: const SliderThemeData(
      inactiveTickMarkColor: Colors.transparent,
      activeTickMarkColor: Colors.transparent,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.white),
      fillColor: MaterialStateProperty.all(AppColors.darkGrey),
    ),
    dialogBackgroundColor: AppColors.darkGrey,
    toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
        fillColor: Colors.transparent),
  );
}
