import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/resource/app_icons.dart';
import 'package:market/presentation/ui/resource/app_styles.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_color.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_comfort.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_title.dart';
import 'package:market/presentation/ui/screens/splash/widgets/dot_w.dart';
import 'package:market/presentation/ui/widgets/w_btn.dart';
import 'package:market/presentation/ui/widgets/w_rating.dart';
@RoutePage()
class ProductScreen extends StatefulWidget {
  final int heroIndex;

  const ProductScreen({super.key, required this.heroIndex});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int selectedColorIndex = -1;

  List<Color> colors = [
    AppColors.greenBold,
    AppColors.C_DBD69,
    AppColors.C_3B250F,
    AppColors.C_69ABCE,
    AppColors.C_0C0C0,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            AppIcons.back,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          AppIcons.like,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 280,
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    controller: _pageController,
                    children: List.generate(3, (index) {
                      return Hero(
                        tag: "arrival_${widget.heroIndex}",
                        child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png',
                          fit: BoxFit.cover,
                        ),
                      );
                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 36,
                    top: 40,
                  ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Smart Watches",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$120.00",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 20,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const WRating(),
                    Text(
                      "Available in stock",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                          color: AppColors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 32,
                  ),
                  child: Divider(),
                ),
                Text(
                  "Color Variant",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: List.generate(
                      5,
                      (index) {
                        return WItemColor(
                          color: colors[index],
                          index: index,
                          onTap: (int index) {
                            setState(() {
                              selectedColorIndex = index;
                            });
                          },
                          isSelected: selectedColorIndex == index,
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 32,
                  ),
                  child: Divider(),
                ),
                const WTitle(
                  title: "Brand",
                  subtitle: 'Noise',
                ),
                const WTitle(
                  title: 'Model Name',
                  subtitle: 'ColorFit Pulse 2',
                ),
                const WTitle(
                  title: 'Colour',
                  subtitle: 'Air Superiority Blue',
                ),
                const WTitle(
                  title: 'Style',
                  subtitle: 'Modern',
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 32,
                  ),
                  child: Divider(),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WItemComfort(
                        icon: AppIcons.car, title: "Get Free Delivery"),
                    WItemComfort(
                        icon: AppIcons.money, title: "Pay On Delivery"),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WItemComfort(
                          icon: AppIcons.replace, title: "07 Days Replace"),
                      WItemComfort(
                          icon: AppIcons.policy, title: "Warranty Policy"),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 28,
                  ),
                  child: Divider(),
                ),
                Text(
                  "About this item",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16,),
                  child: Text(
                    """At vero eos et accusamus et iusto odio dig
ssimos ducimus qui blanditiis praesentium 
voluptatum deleniti atque corrupti quos do
lores et quas molestias excepturi...""",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 16,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WBtn(onTap: (){}, title: "Add to Cart"),
            ],
          ),
        ),
      ),
    );
  }
}
