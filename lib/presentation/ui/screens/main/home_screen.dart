import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_images.dart';
import 'package:market/presentation/ui/screens/main/main_screen.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_arrival.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_shop.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Close the keyboard when tapping outside
      },
      child: Scaffold(
        key: _scaffoldKey,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          
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
                  scaffoldKeyMain.currentState!.openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SvgPicture.asset(AppIcons.menu),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text.rich(
                  TextSpan(
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
                    hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 20),
                  child: Text(
                    "Shop By Category",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      
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
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 48, bottom: 20),
                  child: Text(
                    "Newest Arrival",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      
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
                    return WItemArrival(
                      url:
                      'https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png',
                      onTap: () {
                        context.router.pushAll([
                          ProductRoute(heroIndex: index)
                        ]);
                      }, index: index,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
