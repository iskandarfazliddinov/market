import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_delivery_info.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_payment_selected.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int selectedIndex = -1;

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
                'Payment Method',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    
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
                context.router.pushAll([const CheckOutRoute()]);
              },
              title: "Checkout",
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
              padding: const EdgeInsets.symmetric(horizontal: 28,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28,bottom: 16,),
                    child: Text(
                      "Delivery Information :",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const WDeliveryInfo(
                    isFullWidth: true,
                    name: "Saul Goodmate",
                    address: "16 E Birch Hill Road Fairbanks, NY, 99312 United States",
                    phone: "865-5585 57587",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,bottom: 20,),
                    child: Text(
                      "Payment Method :",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ...List.generate(4, (index) {
                    return WPaymentSelected(onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    }, isChecked: selectedIndex == index,);
                  },)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
