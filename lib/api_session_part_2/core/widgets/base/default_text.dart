import 'package:flutter/material.dart';
import '../../locale/app_local.dart';

import '../../utils/app_colors.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color color;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextDecoration? textDecoration;

  const DefaultText({
    Key? key,
    required this.text,
    this.maxLines = 1,
    this.color = AppColors.primary,
    this.textStyle,
    this.textAlign,
    this.textScaleFactor,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.overflow = TextOverflow.ellipsis,
    this.textDecoration,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr(context),
      textDirection: TextDirection.ltr,
      style: textStyle != null
          ? textStyle!
          : TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              fontSize: fontSize,
              decoration: textDecoration,
            ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      textScaleFactor: textScaleFactor,
    );
  }
}
