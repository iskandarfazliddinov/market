import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';
import 'package:market/presentation/ui/widgets/w_dialog_delete.dart';
import 'package:market/presentation/ui/widgets/w_rating.dart';

class WCartItem extends StatelessWidget {
  final Widget btnWidget;

  const WCartItem({super.key, required this.btnWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                padding: const EdgeInsets.all(20),
                color: AppColors.itemColor,
                child: Image.network(
                  height: 160,
                  "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return  const WDialogDelete(title: 'Delete this product?', description: 'Do you want to delete this product?',);
                      },
                    );
                  },
                  child: SvgPicture.asset(AppIcons.delete),
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WRating(
                padding: EdgeInsets.zero,
              ),
               Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 6),
                child: Text(
                  "Newest Arrival",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    
                    fontSize: 20,
                  ),
                ),
              ),
               Text(
                "\$120.00",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontFamily: "MainFont",
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),
              btnWidget,
            ],
          )
        ],
      ),
    );
  }
}
