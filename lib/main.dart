import 'package:flutter/material.dart';
import 'package:market/presentation/routes/router.dart';
import 'package:market/presentation/ui/state/providers/them_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemProvider(),
        ),
        // Add other providers here if needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemProvider>(context).themeData,
    );
  }
}
