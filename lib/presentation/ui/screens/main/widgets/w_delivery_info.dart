import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';

class WDeliveryInfo extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final bool isFullWidth;

  const WDeliveryInfo({
    super.key,
    this.name = '',
    this.address = '',
    this.phone = '',
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isFullWidth ? MediaQuery.of(context).size.width:230,
      height: 180,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.only(
        left: 24,
        right: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              GestureDetector(
                child: const Icon(
                  Icons.edit,
                  color: AppColors.green,
                ),
                onTap: () {},
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              address,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
            ),
          ),
          phone.isNotEmpty
              ? Text(
                  phone,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
