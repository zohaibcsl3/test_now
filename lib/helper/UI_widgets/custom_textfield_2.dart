import 'package:flutter/material.dart';

import '../theme_data/theme.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.text,
    required this.textTheme,
    required this.isPassword,
    required this.controller,
    required this.validator,
    required this.isPrefixIcon,
    required this.borderRadius,
    this.onChanged,
    required this.isOnchangedFunction,
    required this.readOnly,
  });

  final String text;
  final TextTheme textTheme;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPrefixIcon;
  final double borderRadius;
  Function? onChanged;
  bool isOnchangedFunction;
  final bool readOnly;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = true;

  void obsecureInvert() {
    setState(() {
      isObsecure = !isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      enabled: true,
      validator: widget.validator,
      controller: widget.controller,
      style: const TextStyle(color: Colors.white),
      obscureText: widget.isPassword ? isObsecure : false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        hintText: widget.text,
        hintStyle: widget.textTheme.headlineMedium!.copyWith(
          color: Palette.dustyPeriwinkle,
          fontSize: widget.isPrefixIcon == true ? 15 : 14,
          fontWeight: widget.isPrefixIcon == true
              ? FontWeight.w700
              : FontWeight.w400,
        ),
        border: widget.isPrefixIcon == true
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.transparent,
                ),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),

        // border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey.shade200,

        suffixIcon: widget.isPassword
            ? isObsecure == true
                  ? InkWell(
                      onTap: obsecureInvert,
                      child: const Icon(Icons.visibility_outlined, size: 18),
                    )
                  : InkWell(
                      onTap: obsecureInvert,
                      child: const Icon(
                        Icons.visibility_off_outlined,
                        size: 18,
                      ),
                    )
            : const SizedBox(),
        suffixIconColor: Palette.dustyPeriwinkle,
      ),
      onChanged: (value) {
        if (widget.isOnchangedFunction == true) {
          widget.onChanged!(value);
        } else {
          widget.controller.text = value; // Sync input manually if needed
        }
      },
    );
  }
}
