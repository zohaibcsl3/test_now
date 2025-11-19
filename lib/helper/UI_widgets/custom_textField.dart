// import 'package:flutter/material.dart';
//
// class CustomTextFieldForm extends StatelessWidget {
//   final TextEditingController controller;
//   final String? hint;
//   final String? Function(String?)? validator;
//   final TextInputType keyboardType;
//   final bool obscureText;
//   final EdgeInsets padding;
//   final double radius;
//
//   const CustomTextFieldForm({
//     super.key,
//     required this.controller,
//     this.hint,
//     this.validator,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false,
//     this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//     this.radius = 40,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey.shade100,
//         borderRadius: BorderRadius.circular(radius),
//       ),
//       child: TextFormField(
//         controller: controller,
//         validator: validator,
//         keyboardType: keyboardType,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           hintText: hint,
//           border: InputBorder.none,
//           contentPadding: padding,
//           fillColor: Colors.grey.shade700,
//           focusColor: Colors.grey,
//         ),
//       ),
//     );
//   }
// }
