import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const WBtn({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: const BoxDecoration(color: AppColors.primary),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
