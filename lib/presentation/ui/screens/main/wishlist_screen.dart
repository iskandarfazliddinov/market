import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'Wishlist',
          style: TextStyle(color: AppColors.black, fontSize: 20),
        ),
      ),
      body: Scaffold(
        backgroundColor: AppColors.white,
      ),
    );
  }
}
