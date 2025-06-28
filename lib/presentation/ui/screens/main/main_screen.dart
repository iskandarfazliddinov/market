import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        RootHome(),
        RootWishlist(),
        RootCart(),
        RootProfile(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context, watch: true);
        final currentIndex = tabsRouter.activeIndex;

        return Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 0 ? AppIcons.homeSelected : AppIcons.home,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 1 ? AppIcons.wishlistSelected : AppIcons.wishlist,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 2 ? AppIcons.cartSelected : AppIcons.cart,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 3 ? AppIcons.accountSelected : AppIcons.account,
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
