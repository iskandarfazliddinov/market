import 'package:auto_route/auto_route.dart';
import 'package:market/presentation/routes/router.gr.dart';
import 'route_path.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // ===============
        //    Splash
        // ===============
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: RoutePath.splash,
        ),
        // ===============
        //    OnBoarding
        // ===============
        AutoRoute(
          page: OnboardingRoute.page,
          path: RoutePath.onboarding,
        ),
        // ===============
        //    Login
        // ===============
        AutoRoute(
          page: LoginRoute.page,
          path: RoutePath.login,
        ),
        // ===============
        //    Main
        // ===============
        AutoRoute(
          page: MainRoute.page,
          path: RoutePath.main,
          children: [
            AutoRoute(
              page: RootHome.page,
              path: RoutePath.home,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  path: '',
                ),
              ],
            ),
            AutoRoute(
              page: RootWishlist.page,
              path: RoutePath.wishlists,
              children: [
                AutoRoute(
                  page: WishlistRoute.page,
                  path: '',
                )
              ],
            ),
            AutoRoute(
              page: RootCart.page,
              path: RoutePath.cart,
              children: [
                AutoRoute(
                  page: CartRoute.page,
                  path: '',
                )
              ],
            ),
            AutoRoute(
              page: RootProfile.page,
              path: RoutePath.profile,
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  path: '',
                ),
                AutoRoute(
                  page: OrdersRoute.page,
                  path: RoutePath.order,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: ProductRoute.page,
          path: RoutePath.product,
        )
      ];
}
