import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WOrderProgress extends StatelessWidget {
  final bool isActive;
  final String text;
  final bool isEnd;

  const WOrderProgress({super.key, this.isActive = false, required this.text, this.isEnd = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:  isActive? AppColors.primary:AppColors.orderDef,
              ),
              child:  isActive? const Icon(
                Icons.check,
                color: AppColors.white,
                size: 20,
              ):const SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: !isEnd?SvgPicture.asset(AppIcons.line):const SizedBox(),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: AppStyles.getTextStyle(
              fontWeight: FontWeight.bold,
              color: isActive? AppColors.black : AppColors.grey,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
