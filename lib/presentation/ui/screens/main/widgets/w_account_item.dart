import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WAccountItem extends StatelessWidget {
  final Widget child;
  final String title;

  const WAccountItem({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: AppStyles.getTextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            child
          ],
        ),
        const SizedBox(height: 8),
        const Divider(),
      ],
    );
  }
}
