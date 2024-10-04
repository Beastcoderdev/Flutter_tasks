import 'package:chat_app_ui/core/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final InputDecoration decoration;

  // Correct Constructor
  const CustomTextFormField({super.key, 
    required this.labelText,
    this.isPassword = false, // Default: not a password field
    required this.keyboardType,
    this.validator,
    this.controller,
    required this.decoration, // Required decoration parameter
  });



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Embedded Text label
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.greyColor, // Customize the color as needed
          ),
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: isPassword, // Handles password hiding
          validator: validator,
        
        ),


      ],


    );
  }
}
