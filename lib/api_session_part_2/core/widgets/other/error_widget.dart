import 'package:flutter/material.dart';
import '../../locale/app_local.dart';
import '../../utils/app_colors.dart';
import '../../utils/media_query_values.dart';
import '../base/default_button.dart';

class ErrorWidgets extends StatelessWidget {
  final String msg;
  final VoidCallback? onRetryPressed;
  const ErrorWidgets({Key? key, required this.msg, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Icon(
            Icons.warning_amber_rounded,
            color: AppColors.primary,
            size: 120,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            msg,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              AppLocalizations.of(context)!.translate('try_again'),
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )),
        Container(
            width: context.width * 0.55,
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: DefaultButton(
                child:
                    Text(AppLocalizations.of(context)!.translate('reload_screen')),
                onPressed: () {
                  if (onRetryPressed != null) {
                    onRetryPressed!();
                  }
                }))
      ],
    );
  }
}
