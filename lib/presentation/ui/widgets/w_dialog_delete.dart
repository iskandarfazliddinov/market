import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

class WDialogDelete extends StatelessWidget {
  final String title;
  final String description;

  const WDialogDelete({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppIcons.attation),
            const SizedBox(height: 30),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.getTextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: AppStyles.getTextStyle(
                fontSize: 18,
                color: AppColors.grey,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: WBtn(
                    radius: 70,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    title: "Yes",
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: WBtn(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    radius: 70,
                    color: AppColors.yellow,
                    title: "No",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
