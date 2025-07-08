import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:market/presentation/ui/resource/app_colors.dart';
import 'package:market/presentation/ui/screens/main/screens/product_screen.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_item_arrival.dart';
import 'package:market/presentation/ui/screens/main/widgets/w_like.dart';

@RoutePage()
class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title:  Text(
          'Wishlist',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 28,),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 310,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  WItemArrival(
                    url:
                        'https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ProductScreen(
                            heroIndex: index,
                          );
                        },
                      ));
                    },
                    index: index,
                  ),
                  const Positioned(
                    top: 12,
                    right: 12,
                    child: WLike(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
