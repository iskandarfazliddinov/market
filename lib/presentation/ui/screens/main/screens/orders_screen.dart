import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_cart_item.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  AppIcons.back,
                ),
              ),
              const Text(
                'My Orders',
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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Divider(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
                bottom: 24,
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return WCartItem(
                    btnWidget: SizedBox(
                      width: 130,
                      child: WBtn(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        onTap: () {
                          context.router.push(const TrackOrderRoute());
                        },
                        title: "Track Order",
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
