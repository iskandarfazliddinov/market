import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WCartTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color colorSubTitle;

  const WCartTitle({super.key, required this.title, required this.subtitle, this.colorSubTitle = AppColors.grey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,color: AppColors.grey,fontWeight: FontWeight.bold),),
        Text(subtitle,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,color: colorSubTitle,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
