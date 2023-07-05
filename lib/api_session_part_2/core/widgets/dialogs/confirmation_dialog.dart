import 'package:flutter/material.dart';
import '../../locale/app_local.dart';

class ConfirmationDialog extends StatelessWidget {
  final String alertMsg;
  final VoidCallback onTapConfirm;

  const ConfirmationDialog(
      {Key? key, required this.alertMsg, required this.onTapConfirm})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        alertMsg,
        style: Theme.of(context).textTheme.bodySmall,
        //  TextStyle(
        //     fontFamily: AppStrings.fontName,
        //     color: AppColors.primaryColor,
        //     fontSize: 16,
        //     fontWeight: FontWeight.w600),
      ),
      actions: <Widget>[
        TextButton(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              AppLocalizations.of(context)!.translate('cancel'),
            )),
        TextButton(
          style: Theme.of(context).textButtonTheme.style,
          onPressed: () => onTapConfirm(),
          child: Text(AppLocalizations.of(context)!.translate('ok')),
        ),
      ],
    );
  }
}
