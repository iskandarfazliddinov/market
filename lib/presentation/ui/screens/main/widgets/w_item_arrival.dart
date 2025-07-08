import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/widgets/w_rating.dart';

class WItemArrival extends StatelessWidget {
  final String url;
  final VoidCallback onTap;
  final int index;
  const WItemArrival({super.key, required this.url, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(20),
            color: AppColors.itemColor,
            child: Hero(
              tag: "arrival_$index",
              child: Image.network(
                height: 160,
                url,
              ),
            ),
          ),
          const WRating(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 6),
            child: Text(
              "Newest Arrival",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
           Text(
            "\$120.00",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: "MainFont",
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
