import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

import 'w_delivery_info.dart';

class WDeliveryItem extends StatelessWidget {
  final String title;
  final String address;
  final String name;
  final String phone;
  const WDeliveryItem({super.key, required this.title, this.address = "", this.name = "", this.phone = "",});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20,),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(3, (index) => WDeliveryInfo(address: address,name: name,phone: phone,),),
          ),
        ),
      ],
    );
  }
}
