import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class UniversalInput extends StatelessWidget {
  UniversalInput({
    Key? key,
    required this.title,
    required this.hintText,
    required this.type,
    this.isPassword = false,
  }) : super(key: key);

  final String title;
  final String hintText;
  final TextInputType type;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      textInputAction: TextInputAction.done,
      cursorColor: AppColors.C_A1B8BE,
      cursorHeight: 22,
      cursorWidth: 1,
      keyboardType: type,
      onChanged: (value) {
        print("CURRENT VALUE:$value");
      },
      onSubmitted: (value) {
        print("SUBMITTED VALUE:$value");
      },
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppColors.C_1F5460,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.C_1F5460,
        ),
        fillColor: Colors.red,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        // errorText: "Error",
        // enabled: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
              width: 1,
              color: AppColors.C_1F5460
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.C_1F5460,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.C_1F5460,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.C_1F5460,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.C_1F5460,
          ),
        ),
      ),
    );
  }
}