import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_cart_item.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_cart_title.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_count_btn.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          'Shopping Cart',
          style: TextStyle(
              color: AppColors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return WCartItem(btnWidget: WCountBtn(),);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 50,),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        "Promocodes",
                        style: AppStyles.getTextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Apply",
                            style: AppStyles.getTextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                      border: const OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Order Info",style: AppStyles.getTextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
              ),
              const WCartTitle(title: 'Subtotal', subtitle: '\$890.00',),
              const Padding(
                padding: EdgeInsets.only(top: 12,bottom: 16,),
                child: WCartTitle(title: 'Shipping Charge', subtitle: '+ \$10.00',),
              ),
              const WCartTitle(title: 'Total', subtitle: '\$900.00',colorSubTitle: AppColors.primary,),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: WBtn(onTap: (){}, title: "Checkout"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
