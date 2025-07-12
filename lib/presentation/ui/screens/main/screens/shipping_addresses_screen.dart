import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_delivery_info.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_delivery_item.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class ShippingAddressesScreen extends StatefulWidget {
  const ShippingAddressesScreen({super.key});

  @override
  State<ShippingAddressesScreen> createState() => _ShippingAddressesScreenState();
}

class _ShippingAddressesScreenState extends State<ShippingAddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
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
              Text(
                'Shipping Addresses',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(

                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Information :",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Change",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const WDeliveryInfo(
                            name: "Saul Goodmate",
                            address:
                            """16 E Birch Hill Road Fairbanks, NY, 99312 United States""",
                            phone: "865-5585 57587",
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Handle add address tap
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.grey,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      size: 32,
                                      color: AppColors.grey,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      textAlign: TextAlign.center,
                                      "Add Address",
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const WDeliveryItem(
                    title: 'Recent Delivery Address :',
                    name: "Anne Thurium",
                    address:
                    """35 State Route 05, aw, Grantsville 26143 United States""",
                  ),
                  const WDeliveryItem(
                    title: 'All Delivery Address :',
                    name: "Anne Thurium",
                    address:
                    """35 State Route 05, aw, Grantsville 26143 United States""",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
