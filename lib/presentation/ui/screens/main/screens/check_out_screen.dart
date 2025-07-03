import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.maybePop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.back,
                  ),
                ),
                const Text(
                  'Checkout',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 16,),
              child: WBtn(
                onTap: () {
                  context.router.pushAll([const VerificationCodeRoute()]);
                },
                title: "Pay Now",
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 36),
                      child: Image.asset(AppImages.card),
                    ),
                    Text(
                      "Card Holder Name",
                      style: AppStyles.getTextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Saul Goodmate",
                          hintStyle:
                          AppStyles.getTextStyle(color: AppColors.grey),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.grey,
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36),
                      child: Text(
                        "Card Number",
                        style: AppStyles.getTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "0123   4567   8901   2345",
                          hintStyle:
                          AppStyles.getTextStyle(color: AppColors.grey),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey)),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.grey,
                              ))),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 36),
                                child: Text(
                                  "Expiry Date",
                                  style: AppStyles.getTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "09/28",
                                    hintStyle: AppStyles.getTextStyle(
                                        color: AppColors.grey),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: AppColors.grey)),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.grey,
                                        ))),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 36),
                                child: Text(
                                  "CVV",
                                  style: AppStyles.getTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "235",
                                    hintStyle: AppStyles.getTextStyle(
                                        color: AppColors.grey),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: AppColors.grey)),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.grey,
                                        ))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
