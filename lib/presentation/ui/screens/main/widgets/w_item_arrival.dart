import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WItemArrival extends StatelessWidget {
  final String url;
  const WItemArrival({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(20),
          color: AppColors.itemColor,
          child: Image.network(
            height: 160,
            url,
          ),
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 24,
          itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 6),
          child: Text(
            "Newest Arrival",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.black,
              fontSize: 16,
            ),
          ),
        ),
        const Text(
          "\$120.00",
          style: TextStyle(
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
