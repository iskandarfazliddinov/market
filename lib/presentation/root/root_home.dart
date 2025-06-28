import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootHome extends StatelessWidget {
  const RootHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
