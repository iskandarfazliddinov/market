import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';

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
        title: const Text('Cart'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      backgroundColor: AppColors.white,
    );
  }
}
