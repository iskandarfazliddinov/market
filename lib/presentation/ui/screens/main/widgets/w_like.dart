import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';

class WLike extends StatefulWidget {
  const WLike({super.key});

  @override
  State<WLike> createState() => _WLikeState();
}

class _WLikeState extends State<WLike> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: SvgPicture.asset(
        isSelected ? AppIcons.selectLike : AppIcons.like,
      ),
    );
  }
}
