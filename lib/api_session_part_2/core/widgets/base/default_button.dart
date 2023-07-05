import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class DefaultButton extends StatelessWidget {
  final bool isUpperCase;
  final double width;
  final double? height;
  final double radius;
  final Color? background;
  final Color textColor;
  final Color? splashColor;
  final Color? disabledColor;
  final VoidCallback? onPressed; // voidCallback = void Function()
  final String? text;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? fontSize;
  final double? textScaleFactor;
  final double? elevation;
  final ButtonStyle? buttonStyle;

  const DefaultButton({
    Key? key,
    this.textColor = AppColors.white,
    required this.onPressed,
    this.text,
    this.width = double.infinity,
    this.isUpperCase = false,
    this.background,
    this.radius = 16,
    this.child,
    this.splashColor,
    this.padding,
    this.margin,
    this.height,
    this.fontSize,
    this.textScaleFactor,
    this.buttonStyle,
    this.elevation = 1,
    this.disabledColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      child: ElevatedButton(
        style: buttonStyle ?? Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: child ??
            Text(
              isUpperCase ? text!.toUpperCase() : text!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textScaleFactor: textScaleFactor,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: textColor,
                    fontSize: fontSize,
                  ),
            ),
      ),
    );
  }
}
