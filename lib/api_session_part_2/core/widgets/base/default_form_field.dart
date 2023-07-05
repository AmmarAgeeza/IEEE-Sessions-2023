// import 'package:flutter/material.dart';

// import '../utils/app_colors.dart';

// class DefaultFormField extends StatelessWidget {
//   final TextEditingController controller;
//   final String? Function(String?)? validator;
//   final VoidCallback? onTap;
//   final String? labelText;
//   final TextInputType keyboardType;
//   final void Function(String)? onFieldSubmitted;
//   final void Function()? onEditingComplete;
//   final void Function(String)? onChanged;
//   final bool obscureText;
//   final bool enabled;
//   final Widget? prefixIcon;
//   final Widget? suffixIcon;
//   final String? initialValue;
//   final String? hintText;
//   final String? suffixText;
//   final TextStyle? suffixTextStyle;
//   final Color? backgroundColor;
//   final Color? textColor;
//   final Color? labelColor;
//   final Color? cursorColor;
//   final double radius;
//   final double? height;
//   final int? maxLines;
//   final double horizontalPadding;

//   final EdgeInsetsGeometry? contentPadding;
//   final AlignmentGeometry? containerAlignment;
//   final BoxConstraints? suffixIconConstraints;
//   final bool readOnly;
//   final int? maxLength;
//   final int? errorMaxLines;
//   final TextDirection? textDirection;
//   final TextAlign textAlign;
//   final TextInputAction? textInputAction;

//   const DefaultFormField(
//       {Key? key,
//       required this.controller,
//       this.validator,
//       this.onTap,
//       this.labelText,
//       required this.keyboardType,
//       this.onFieldSubmitted,
//       this.onEditingComplete,
//       this.onChanged,
//       this.obscureText = false,
//       this.prefixIcon,
//       this.suffixIcon,
//       this.initialValue,
//       this.hintText,
//       this.backgroundColor,
//       this.height,
//       this.radius = 30.0,
//       this.maxLines,
//       this.enabled = true,

//       this.horizontalPadding = 0,
//       this.textColor,
//       this.labelColor = AppColors.white,
//       this.contentPadding,
//       this.containerAlignment,
//       this.suffixText,
//       this.suffixTextStyle,
//       this.suffixIconConstraints,
//       this.readOnly = false,
//       this.cursorColor=AppColors.primary,
//       this.maxLength,
//       this.errorMaxLines = 2,
//       this.textDirection = TextDirection.ltr,
//       this.textAlign = TextAlign.start,
//       this.textInputAction})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: containerAlignment,
//       height: height,
//       padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//       decoration: BoxDecoration(
//           color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
//       child: TextFormField(
//         textInputAction: textInputAction,
//         maxLength: maxLength,
//         readOnly: readOnly,
//         cursorColor: cursorColor,
//         enabled: enabled,
//         textAlignVertical: TextAlignVertical.center,
//         textAlign: textAlign,
//         maxLines: maxLines,
//         textDirection: textDirection,
//         initialValue: initialValue,
//         controller: controller,
//         validator: validator,
//         keyboardType: keyboardType,
//         onFieldSubmitted: onFieldSubmitted,
//         onEditingComplete: onEditingComplete,
//         onChanged: onChanged,
//         onTap: onTap,
//         obscureText: obscureText,

//         style: TextStyle(
//           color: textColor,
//         ),
//         decoration: InputDecoration(
//           counterText: '',
//           suffixStyle: suffixTextStyle,
//           suffixText: suffixText,
//           errorMaxLines: errorMaxLines,
//           contentPadding: contentPadding,
//           isDense: true,
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           suffixIconConstraints: suffixIconConstraints,
//           labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
//                 color: labelColor,
//               ),
//           labelText: labelText,
//           border: Theme.of(context).inputDecorationTheme.border,
//           enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
//           disabledBorder: Theme.of(context).inputDecorationTheme.disabledBorder,
//           focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
//           hintText: hintText,
//           hintStyle: const TextStyle(
//             color: Colors.grey,
//           ),
//           hintTextDirection: TextDirection.ltr,
//           prefixIcon: prefixIcon,
//           suffixIcon: suffixIcon,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class DefaultTextFormField extends StatelessWidget { 
   final TextEditingController controller;
  final TextInputType type;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final Function()? onTap;
  final bool isPassword;
  final String? Function(String?)? validate;
  final String label;
  final String? hint;
  final IconData? prefix;
  final IconData? suffix;
  final Function()? suffixPressed;
  final bool isClickable = true;
  final int maxLines;
  const DefaultTextFormField({
    Key? key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate,
    this.hint,
    required this.label,
    this.prefix,
    this.suffix,
    this.suffixPressed,
    this.isPassword = false,
    this.maxLines = 1,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: AppColors.primary,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        prefixIconColor: AppColors.primary,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,

        // OutlineInputBorder(
        //   borderSide: const BorderSide(),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        //  OutlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.deepOrange),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        border: Theme.of(context).inputDecorationTheme.border,
        //  OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        labelText: label,
        hintText: hint,
        floatingLabelStyle: const TextStyle(color: AppColors.primary),
        prefixIcon: prefix != null
            ? Icon(
                prefix,
                color: AppColors.primary,
              )
            : null,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: AppColors.primary,
                ),
              )
            : null,
      ),
    );
  }
}
