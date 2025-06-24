import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_count_btn.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';
import 'package:market/presentation/ui/widgets/w_rating.dart';

class WCartItem extends StatelessWidget {
  const WCartItem({super.key});

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
                        return Dialog(

                          backgroundColor: Colors.transparent,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20,),
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
                                  "Delete this product?",
                                  textAlign: TextAlign.center,
                                  style: AppStyles.getTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Do you want to delete this product?",
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
                      },
                    );
                  },
                  child: SvgPicture.asset(AppIcons.delete),
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WRating(
                padding: EdgeInsets.zero,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 6),
                child: Text(
                  "Newest Arrival",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "\$120.00",
                style: TextStyle(
                  fontFamily: "MainFont",
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 24),
              WCountBtn()
            ],
          )
        ],
      ),
    );
  }
}
