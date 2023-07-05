import 'package:flutter/material.dart';
import '../../widgets/base/default_text.dart';

import '../../utils/app_colors.dart';

class DefaultCheckBoxListTile extends StatelessWidget {
  const DefaultCheckBoxListTile(
      {super.key, required this.text, this.onCganged, required this.value});
  final String text;
  final bool value;
  final Function(bool?)? onCganged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultText(
          text: text,
          textStyle: Theme.of(context).textTheme.headlineMedium,
        ),
        const Spacer(),
        Checkbox(
          activeColor: AppColors.primary,
          value: value,
          onChanged: onCganged,
        )
      ],
    );
    //  CheckboxListTile(
    //   activeColor: AppColors.primary,
    //   title: Transform.translate(
    //     offset: const Offset(0, 0), //get lang from shared and check
    //     child: DefaultText(
    //       text: text,
    //       textStyle: Theme.of(context).textTheme.headlineMedium,
    //     ),
    //   ),
    //   value: value,
    //   onChanged: onCganged,
    // );
  }
}
