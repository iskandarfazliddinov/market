// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;
import 'package:market/presentation/root/root_cart.dart' as _i12;
import 'package:market/presentation/root/root_home.dart' as _i13;
import 'package:market/presentation/root/root_profile.dart' as _i14;
import 'package:market/presentation/root/root_wishlist.dart' as _i15;
import 'package:market/presentation/ui/screens/main/cart_screen.dart' as _i1;
import 'package:market/presentation/ui/screens/main/home_screen.dart' as _i3;
import 'package:market/presentation/ui/screens/main/main_screen.dart' as _i5;
import 'package:market/presentation/ui/screens/main/profile_screen.dart'
    as _i10;
import 'package:market/presentation/ui/screens/main/screens/orders_screen.dart'
    as _i7;
import 'package:market/presentation/ui/screens/main/screens/payment_screen.dart'
    as _i8;
import 'package:market/presentation/ui/screens/main/screens/product_screen.dart'
    as _i9;
import 'package:market/presentation/ui/screens/main/screens/shipping_addresses_screen.dart'
    as _i16;
import 'package:market/presentation/ui/screens/main/screens/track_order_screen.dart'
    as _i19;
import 'package:market/presentation/ui/screens/main/wishlist_screen.dart'
    as _i20;
import 'package:market/presentation/ui/screens/onborading/onboarding_screen.dart'
    as _i6;
import 'package:market/presentation/ui/screens/splash/splash_screen.dart'
    as _i18;
import 'package:market/presentation/ui/screens/verifications/forgot_password_screen.dart'
    as _i2;
import 'package:market/presentation/ui/screens/verifications/login_screen.dart'
    as _i4;
import 'package:market/presentation/ui/screens/verifications/reset_password.dart'
    as _i11;
import 'package:market/presentation/ui/screens/verifications/sign_up_screen.dart'
    as _i17;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrdersScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PaymentScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ProductScreen(
          key: args.key,
          heroIndex: args.heroIndex,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPassword(),
      );
    },
    RootCart.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RootCart(),
      );
    },
    RootHome.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RootHome(),
      );
    },
    RootProfile.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RootProfile(),
      );
    },
    RootWishlist.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RootWishlist(),
      );
    },
    ShippingAddressesRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ShippingAddressesScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashScreen(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TrackOrderScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartScreen]
class CartRoute extends _i21.PageRouteInfo<void> {
  const CartRoute({List<_i21.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i21.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i21.PageRouteInfo<void> {
  const LoginRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i21.PageRouteInfo<void> {
  const MainRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingRoute extends _i21.PageRouteInfo<void> {
  const OnboardingRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrdersScreen]
class OrdersRoute extends _i21.PageRouteInfo<void> {
  const OrdersRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PaymentScreen]
class PaymentRoute extends _i21.PageRouteInfo<void> {
  const PaymentRoute({List<_i21.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProductScreen]
class ProductRoute extends _i21.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i22.Key? key,
    required int heroIndex,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            heroIndex: heroIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i21.PageInfo<ProductRouteArgs> page =
      _i21.PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.heroIndex,
  });

  final _i22.Key? key;

  final int heroIndex;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, heroIndex: $heroIndex}';
  }
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i21.PageRouteInfo<void> {
  const ProfileRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ResetPassword]
class ResetPassword extends _i21.PageRouteInfo<void> {
  const ResetPassword({List<_i21.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RootCart]
class RootCart extends _i21.PageRouteInfo<void> {
  const RootCart({List<_i21.PageRouteInfo>? children})
      : super(
          RootCart.name,
          initialChildren: children,
        );

  static const String name = 'RootCart';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RootHome]
class RootHome extends _i21.PageRouteInfo<void> {
  const RootHome({List<_i21.PageRouteInfo>? children})
      : super(
          RootHome.name,
          initialChildren: children,
        );

  static const String name = 'RootHome';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RootProfile]
class RootProfile extends _i21.PageRouteInfo<void> {
  const RootProfile({List<_i21.PageRouteInfo>? children})
      : super(
          RootProfile.name,
          initialChildren: children,
        );

  static const String name = 'RootProfile';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RootWishlist]
class RootWishlist extends _i21.PageRouteInfo<void> {
  const RootWishlist({List<_i21.PageRouteInfo>? children})
      : super(
          RootWishlist.name,
          initialChildren: children,
        );

  static const String name = 'RootWishlist';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ShippingAddressesScreen]
class ShippingAddressesRoute extends _i21.PageRouteInfo<void> {
  const ShippingAddressesRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ShippingAddressesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShippingAddressesRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignUpScreen]
class SignUpRoute extends _i21.PageRouteInfo<void> {
  const SignUpRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SplashScreen]
class SplashRoute extends _i21.PageRouteInfo<void> {
  const SplashRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TrackOrderScreen]
class TrackOrderRoute extends _i21.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.WishlistScreen]
class WishlistRoute extends _i21.PageRouteInfo<void> {
  const WishlistRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
