import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_cart_title.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_order_progress.dart';
import 'package:market/presentation/ui/widgets/w_dialog_delete.dart';
import 'package:market/presentation/ui/widgets/w_rating.dart';

@RoutePage()
class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
                  context.router.pop();
                },
                child: SvgPicture.asset(
                  AppIcons.back,
                ),
              ),
               Text(
                'Track Order',
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
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        padding: const EdgeInsets.all(20),
                        color: AppColors.itemColor,
                        child: Image.network(
                          height: 110,
                          "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                        ),
                      ),
                      const SizedBox(width: 20),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WRating(
                            padding: EdgeInsets.zero,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 6),
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
                          SizedBox(height: 24),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 48),
                  const WOrderProgress(
                    text: 'Order Monday, 20 January 2023',
                    isActive: true,
                  ),
                  const WOrderProgress(
                    text: 'Shipped Tuesday, 20 January 2023',
                    isActive: true,
                  ),
                  const WOrderProgress(
                    text: 'Out For Delivery',
                  ),
                  const WOrderProgress(
                    text: 'Arriving Saturday',
                    isEnd: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 28,
                      bottom: 36,
                    ),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                  Text(
                    "Delivery Information :",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 40,),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: AppColors.grey,
                      width: 1,
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saul Goodmate",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12,bottom: 16,),
                          child: Text(
                            """16 E Birch Hill Road Fairbanks, NY, 99312 United States""",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                          ),
                        ),
                        Text(
                          "865-5585 57587",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text("Order Info",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold,fontSize: 20,),),
                  ),
                  const WCartTitle(title: 'Subtotal', subtitle: '\$890.00',),
                  const Padding(
                    padding: EdgeInsets.only(top: 12,bottom: 16,),
                    child: WCartTitle(title: 'Shipping Charge', subtitle: '+ \$10.00',),
                  ),
                  const WCartTitle(title: 'Total', subtitle: '\$900.00',colorSubTitle: AppColors.primary,),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
