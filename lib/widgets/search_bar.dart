import 'package:flutter/material.dart';
import 'package:ui_week2/widgets/utils.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final bool isPassword;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final InputBorder? enabledBorderStyle;
  final InputBorder? focusedBorderStyle;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final void Function()? suffixPressed;
  final String label;
  final bool isClickable = true;
  final Widget? prefix;
  final Widget? suffix;
  final dynamic validate;
  const SearchTextFormField({
    super.key,
    required this.controller,
    this.decoration,
    required this.isPassword,
    this.suffixIconColor,
    this.prefixIconColor,
    this.enabledBorderStyle,
    this.focusedBorderStyle,
    this.style,
    this.labelStyle,
    this.onChange,
    this.onTap,
    this.suffixPressed,
    required this.label,
    this.prefix,
    this.suffix,
    this.validate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Chats',
          style: textStyle(40.0, Colors.white),
        ),
        const SizedBox(
          height: 15.0,
        ),
        TextFormField(
          style: const TextStyle(
            color: Colors.white,
          ),
          validator: validate,
          controller: controller,
          obscureText: isPassword,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            suffixIconColor: suffixIconColor,
            prefixIconColor: prefixIconColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: const BorderSide(
                color: searchSearchColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: searchSearchColor,
              ),
              borderRadius: BorderRadius.circular(14.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: const BorderSide(
                color: searchSearchColor,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: const BorderSide(
                color: searchSearchColor,
              ),
            ),
            labelText: label,
            labelStyle: labelStyle,
            prefixIcon: prefix,
            suffixIcon: suffix,
            filled: true,
            fillColor: searchSearchColor,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: searchSearchColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
