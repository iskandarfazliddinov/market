import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const WTitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title : ",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,fontWeight: FontWeight.bold,),),
          Text(subtitle,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18,fontWeight: FontWeight.bold,color: AppColors.grey,),)
        ],
      ),
    );
  }
}
