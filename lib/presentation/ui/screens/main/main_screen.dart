import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/screens/main/cart_screen.dart';
import 'package:market/presentation/ui/screens/main/home_screen.dart';
import 'package:market/presentation/ui/screens/main/profile_screen.dart';
ximport 'package:market/presentation/ui/screens/main/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(
      length: 4, // Number of tabs
      vsync: this,
    );
    _tabController.addListener((){
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .unfocus(); // Close the keyboard when tapping outside
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomeScreen(),
            WishlistScreen(),
            CartScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: Container(
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
          child: TabBar(
              indicatorColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              controller: _tabController,
              onTap: (index) {
                print(index);
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: [
                Tab(
                  child: SvgPicture.asset(_selectedIndex == 0 ? AppIcons.homeSelected:AppIcons.home),
                ),
                Tab(
                  child: SvgPicture.asset(_selectedIndex == 1? AppIcons.wishlistSelected:AppIcons.wishlist),
                ),
                Tab(
                  child: SvgPicture.asset(_selectedIndex == 2?AppIcons.cartSelected:AppIcons.cart),
                ),
                Tab(
                  child: SvgPicture.asset(_selectedIndex == 3?AppIcons.accountSelected :AppIcons.account),
                ),
              ]),
        ),
      ),
    );
  }
}
