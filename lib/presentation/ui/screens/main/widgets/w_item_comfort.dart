import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WItemComfort extends StatelessWidget {
  final String icon;
  final String title;
  const WItemComfort({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(height: 12),
        Text(title,style: AppStyles.getTextStyle(fontWeight: FontWeight.bold,fontSize: 18,),)
      ],
    );
  }
}
