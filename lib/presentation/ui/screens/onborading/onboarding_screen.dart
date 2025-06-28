import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/widgets/w_onboarding.dart';
import 'package:market/presentation/ui/screens/splash/widgets/dot_w.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    context.router.pushAll([const LoginRoute()]);
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 84,
                    right: 20,
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (indexPage) {
                  setState(() {
                    _currentPage = indexPage;
                  });
                },
                children: const [
                  WOnBoarding(
                    title: 'Discover New Products',
                    description: """Many new products are discovered by 
people simply happening upon them 
while being out and about in the 
world.""",
                    image: AppImages.onBoarding1,
                  ),
                  WOnBoarding(
                    title: 'Earn Points For Shopping',
                    description: """The purpose of reward points is to provide
an incentive for customers to make
repeat purchases.""",
                    image: AppImages.onBoarding2,
                  ),
                  WOnBoarding(
                    title: 'Get Fast Local Delivery',
                    description: """Wow Express offers cash on delivery
services and fast delivery services
so that your customers.""",
                    image: AppImages.onBoarding3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) {
                    return WDot(
                      color: _currentPage == index
                          ? AppColors.primary
                          : AppColors.primary.withOpacity(0.5),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
