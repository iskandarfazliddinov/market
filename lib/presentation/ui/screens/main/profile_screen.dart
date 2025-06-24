import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_account_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          'My Account',
          style: TextStyle(
              color: AppColors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AppImages.person,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 4,
                  ),
                  child: Text(
                    "Saul Goodmate",
                    style: AppStyles.getTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  "saulgo35@gmail.com",
                  style: AppStyles.getTextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
                ),
                const SizedBox(height: 48),
                WAccountItem(
                  title: 'Notification',
                  child: Switch(
                    value: false,
                    onChanged: (_) {},
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: WAccountItem(
                    title: 'My Orders',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: WAccountItem(
                    title: 'Payment Method',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                WAccountItem(
                  title: 'Dark Mode',
                  child: Switch(
                    value: false,
                    onChanged: (_) {},
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: WAccountItem(
                    title: 'Shipping Addresses',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                const SizedBox(height: 28),
                GestureDetector(
                  onTap: (){},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Logout",
                      style: AppStyles.getTextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
