import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/screens/splash/widgets/dot_w.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _navigateToOnboarding();
    super.initState();
  }

  Future<void> _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 5));
    context.router.pushAll([const OnboardingRoute()]);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Column(
                children: [
                  SvgPicture.asset("assets/images/logo.svg"),
                   const SizedBox(height: 40),
                     Text.rich(
                    TextSpan(
                      text: "Swip",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                      children: [
                        TextSpan(
                          text: "wide",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          )
                        )
                      ]
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return WDot(color: AppColors.primary.withOpacity(1-0.2*index),);
                  },),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
