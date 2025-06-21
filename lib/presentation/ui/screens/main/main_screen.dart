import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_drawer_item.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_arrival.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_shop.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              AppImages.person,
              width: 40,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(AppIcons.menu),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text.rich(
                TextSpan(
                  text: "Swip",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: "wide",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(90),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 1), // pastga soyani siljitadi
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search “Smartphone",
                  hintStyle: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontFamily: "MainFont"),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 28,
                    color: AppColors.grey,
                  ),
                  suffixIcon: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.qr_code_scanner,
                      color: AppColors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90)),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 32, bottom: 20),
                child: Text(
                  "Shop By Category",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  WItemShop(icon: AppIcons.clothes, title: "Clothes"),
                  WItemShop(icon: AppIcons.laptop, title: "Laptop"),
                  WItemShop(icon: AppIcons.bagIcon, title: "Bag"),
                  WItemShop(icon: AppIcons.shoes, title: "Shoes"),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 48, bottom: 20),
                child: Text(
                  "Newest Arrival",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 310,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const WItemArrival(
                    url:
                        'https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png',
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(AppIcons.home),
            SvgPicture.asset(AppIcons.wishlist),
            SvgPicture.asset(AppIcons.cart),
            SvgPicture.asset(AppIcons.account),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.white,
        child: ListView(
          children: [
            SvgPicture.asset(
              AppImages.logo,
              width: 100,
            ),
            const SizedBox(height: 28),
            const Align(
              alignment: Alignment.center,
              child: Text.rich(TextSpan(
                  text: "Swip",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: "wide",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ))
                  ])),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 40,bottom: 40),
              child: Divider(
                color: AppColors.grey,
              ),
            ),
            const WDrawerItem(title: 'Rewards', icon: AppIcons.gift,),
            const WDrawerItem(title: 'Help', icon: AppIcons.help,),
            const WDrawerItem(title: 'Contact Us', icon: AppIcons.action,),
            const WDrawerItem(title: 'Privacy Policy', icon: AppIcons.privacy,),
            const WDrawerItem(title: 'Logout', icon: AppIcons.logOut,),
          ],
        ),
      ),
    );
  }
}
