import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/screens/payment_screen.dart';
import 'package:market/presentation/ui/screens/main/screens/shipping_addresses_screen.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_account_item.dart';
import 'package:market/presentation/ui/state/providers/them_provider.dart';
import 'package:provider/provider.dart';

@RoutePage()
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
        forceMaterialTransparency: true,
        centerTitle: true,
        title:  Text(
          'My Account',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Scaffold(
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
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  "saulgo35@gmail.com",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    context.router.push(const OrdersRoute());
                  },
                  child: WAccountItem(
                    title: 'My Orders',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ),
                    );
                  },
                  child: WAccountItem(
                    title: 'Payment Method',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                WAccountItem(
                  title: 'Dark Mode',
                  child: Consumer<ThemProvider>(
                    builder: (context,provider, child) {
                      return Switch(
                        value: provider.isDarkMode,
                        onChanged: (_) {
                          provider.toggleTheme();
                        },
                      );
                    }
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ShippingAddressesScreen();
                      },
                    ));
                  },
                  child: WAccountItem(
                    title: 'Shipping Addresses',
                    child: SvgPicture.asset(AppIcons.next),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
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
