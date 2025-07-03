import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WCheck extends StatefulWidget {
  final GestureTapCallback onTap;
  final bool isChecked;

  const WCheck({super.key, required this.onTap, required this.isChecked});

  @override
  State<WCheck> createState() => _WCheckState();
}

class _WCheckState extends State<WCheck> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.isChecked ? AppColors.green : AppColors.white,
          border: Border.all(
            color: widget.isChecked ? AppColors.green : AppColors.primary,
          ),
        ),
        child: widget.isChecked?const Icon(
          Icons.check,
          color: AppColors.white,
          size: 16,
        ):const SizedBox(),
      ),
    );
  }
}
