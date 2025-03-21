import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
class CommonTextField extends StatelessWidget {
  ///
  final String? title;

  ///
  final TextEditingController? controller;

  ///
  final TextInputType? keyboardType;

  ///
  final int? maxLength;

  ///
  final FormFieldValidator? validator;

  ///
  final Widget? suffix;

  ///
  final TextInputAction? textInputAction;

  ///
  final Widget? prefixIcon;

  ///
  final Widget? suffixIcon;

  ///
  final bool? enabled;

  ///
  final bool? readOnly;

  ///
  final bool? obscureText;

  ///
  final String? hintText;

  ///
  final Color? fillColor;

  ///
  final Color? color;

  ///
  final Color? hintColor;

  ///
  final String? suffixText;

  ///
  final bool? filled;

  ///
  final TextCapitalization? textCapitalization;

  ///
  final Function(String)? onChanged;

  ///
  final List<TextInputFormatter>? inputFormatters;

  ///
  const CommonTextField(
      {super.key,
      this.title,
      this.controller,
      this.keyboardType,
      this.maxLength,
      this.validator,
      this.textInputAction,
      this.suffix,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.enabled,
      this.onChanged,
      this.readOnly,
      this.inputFormatters,
      this.hintText,
      this.fillColor,
      this.color,
      this.hintColor,
      this.textCapitalization,
      this.filled,
      this.suffixText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: TextFormField(
        // onTapOutside: hideKeyboard,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        inputFormatters: inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: textInputAction ?? TextInputAction.next,
        decoration: InputDecoration(
          errorStyle: TextStyle(
            color: Colors.redAccent, // Change error text color here
            fontSize: 14,
          ),
          filled: filled,
          errorMaxLines: 2,
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          fillColor: fillColor ?? Colors.white38,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(width: 1, color: color ?? Colors.blue),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: color ?? Colors.black,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
          counterText: '',
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // labelText: hintText,
          hintText: hintText,

          hintStyle: TextStyle(
            color: hintColor ?? Colors.green,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          /* labelStyle: TextStyle(
              color: hintColor ?? Colors.black,
              fontSize: 14 / scaleFactor,
              fontWeight: FontWeight.w400,
              height: 1,
              fontFamily: 'verdana'),*/
          suffix: suffix,
          suffixText: suffixText,
          enabled: true,
          suffixStyle: TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        readOnly: readOnly ?? false,
        enabled: enabled,
        obscureText: obscureText ?? false,
        cursorColor: Colors.redAccent,
        cursorHeight: 20,
        cursorWidth: 1.5,
        controller: controller,
        onTap: () {},
        validator: validator ??
            (String? value) {
              return null;
            },
        keyboardType: keyboardType,
        maxLength: maxLength,
        onChanged: onChanged ?? (String value) {},
      ),
    );
  }
}
