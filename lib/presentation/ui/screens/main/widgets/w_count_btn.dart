import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WCountBtn extends StatefulWidget {
  const WCountBtn({super.key});

  @override
  State<WCountBtn> createState() => _WCountBtnState();
}

class _WCountBtnState extends State<WCountBtn> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            if (count > 0) {
              setState(() {
                count--;
              });
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.itemColor,
                borderRadius: BorderRadius.circular(8)
            ),
            child: const Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text("$count",style: Theme.of(context).textTheme.bodyLarge?.copyWith(),),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              count++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8)
            ),
            child:  const Icon(Icons.add,color: AppColors.white,),
          ),
        ),
      ],
    );
  }
}
