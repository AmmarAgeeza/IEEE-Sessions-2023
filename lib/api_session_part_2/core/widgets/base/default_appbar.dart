import 'package:flutter/material.dart';
import 'package:ieee_sessions_2023/api_session_part_2/core/locale/app_local.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

import 'default_text.dart';


class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;
  const DefaultAppBar({super.key, required this.appBarText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      // titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(),
      title:  Text(   appBarText.tr(context),style:Theme.of(context).appBarTheme.titleTextStyle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
defaultAppBar(appBarText,context){
  return AppBar(
      backgroundColor: AppColors.primary,
      // titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(),
      title: const DefaultText( text:AppStrings.welcome),
    );
}