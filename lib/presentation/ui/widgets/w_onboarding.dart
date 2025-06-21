import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WOnBoarding extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const WOnBoarding({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        const SizedBox(height: 100),
        Text(
          title,
          style: const TextStyle(
            fontSize: 26,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
         SizedBox(
          width: 340,
          child: Text(
            textAlign: TextAlign.center,
            description,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
