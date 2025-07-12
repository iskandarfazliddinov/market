import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WTextFiledEdit extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final Widget? suffixIcon;


  const WTextFiledEdit({
    super.key,
    required this.textEditingController,
    this.keyboardType = TextInputType.text,
    this.obscureText = false, this.enabled = true, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: TextField(
        enabled: enabled,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: textEditingController,
        decoration:  InputDecoration(
          suffixIcon: suffixIcon,
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
