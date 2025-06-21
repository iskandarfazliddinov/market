import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';

class WOutlineBtn extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;

  const WOutlineBtn({super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:170,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
              width: 1,
            )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(icon,width: 30,),
            const SizedBox(width: 12),
             Text(text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.black,),)
          ],
        ),
      ),
    );
  }
}
