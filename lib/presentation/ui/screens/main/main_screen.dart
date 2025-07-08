import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_drawer_item.dart';

final GlobalKey<ScaffoldState> scaffoldKeyMain = GlobalKey<ScaffoldState>();

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
          key: scaffoldKeyMain,
          drawer: Drawer(
            
            child: ListView(
              children: [
                SvgPicture.asset(
                  AppImages.logo,
                  width: 100,
                ),
                const SizedBox(height: 28),
                 Align(
                  alignment: Alignment.center,
                  child: Text.rich(TextSpan(
                      text: "Swip",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primary,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: "wide",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                            ))
                      ])),
                ),
                const Padding(
                  padding:
                  EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 40),
                  child: Divider(
                    color: AppColors.grey,
                  ),
                ),
                const WDrawerItem(
                  title: 'Rewards',
                  icon: AppIcons.gift,
                ),
                const WDrawerItem(
                  title: 'Help',
                  icon: AppIcons.help,
                ),
                const WDrawerItem(
                  title: 'Contact Us',
                  icon: AppIcons.action,
                ),
                const WDrawerItem(
                  title: 'Privacy Policy',
                  icon: AppIcons.privacy,
                ),
                const WDrawerItem(
                  title: 'Logout',
                  icon: AppIcons.logOut,
                ),
              ],
            ),
          ),
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
