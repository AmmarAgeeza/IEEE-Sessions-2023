import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../widgets/base/default_icon_button.dart';
import '../../widgets/other/loading_indicator.dart';



class DefaultListTile extends StatelessWidget {
  final String title;
  final bool loading;
  final IconData trailingIcon;
  final Function() trailingIconOnPressed;

  const DefaultListTile(
      {Key? key, required this.title, required this.trailingIcon, required this.trailingIconOnPressed, this.loading=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        title,
       style: Theme.of(context).textTheme.headlineMedium,
      ),
      trailing:loading?const LoadingIndicator(): DefaultIconButton(
        onPressed: trailingIconOnPressed,
        icon: Icon(trailingIcon,color: AppColors.primary,),
      ),
    );
  }
}
