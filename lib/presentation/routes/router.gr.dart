// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:flutter/material.dart' as _i27;
import 'package:market/presentation/root/root_cart.dart' as _i16;
import 'package:market/presentation/root/root_home.dart' as _i17;
import 'package:market/presentation/root/root_profile.dart' as _i18;
import 'package:market/presentation/root/root_wishlist.dart' as _i19;
import 'package:market/presentation/ui/screens/main/cart_screen.dart' as _i1;
import 'package:market/presentation/ui/screens/main/home_screen.dart' as _i6;
import 'package:market/presentation/ui/screens/main/main_screen.dart' as _i8;
import 'package:market/presentation/ui/screens/main/profile_screen.dart'
    as _i14;
import 'package:market/presentation/ui/screens/main/screens/check_out_screen.dart'
    as _i2;
import 'package:market/presentation/ui/screens/main/screens/delivery_info_screen.dart'
    as _i3;
import 'package:market/presentation/ui/screens/main/screens/edit_profile_screen.dart'
    as _i4;
import 'package:market/presentation/ui/screens/main/screens/orders_screen.dart'
    as _i10;
import 'package:market/presentation/ui/screens/main/screens/payment_method_screen.dart'
    as _i11;
import 'package:market/presentation/ui/screens/main/screens/payment_screen.dart'
    as _i12;
import 'package:market/presentation/ui/screens/main/screens/product_screen.dart'
    as _i13;
import 'package:market/presentation/ui/screens/main/screens/shipping_addresses_screen.dart'
    as _i20;
import 'package:market/presentation/ui/screens/main/screens/track_order_screen.dart'
    as _i23;
import 'package:market/presentation/ui/screens/main/screens/verification_code_screen.dart'
    as _i24;
import 'package:market/presentation/ui/screens/main/wishlist_screen.dart'
    as _i25;
import 'package:market/presentation/ui/screens/onborading/onboarding_screen.dart'
    as _i9;
import 'package:market/presentation/ui/screens/splash/splash_screen.dart'
    as _i22;
import 'package:market/presentation/ui/screens/verifications/forgot_password_screen.dart'
    as _i5;
import 'package:market/presentation/ui/screens/verifications/login_screen.dart'
    as _i7;
import 'package:market/presentation/ui/screens/verifications/reset_password.dart'
    as _i15;
import 'package:market/presentation/ui/screens/verifications/sign_up_screen.dart'
    as _i21;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartScreen(),
      );
    },
    CheckOutRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CheckOutScreen(),
      );
    },
    DeliveryInfoRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DeliveryInfoScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.EditProfileScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardingScreen(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OrdersScreen(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PaymentMethodScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PaymentScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ProductScreen(
          key: args.key,
          heroIndex: args.heroIndex,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ResetPassword(),
      );
    },
    RootCart.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.RootCart(),
      );
    },
    RootHome.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.RootHome(),
      );
    },
    RootProfile.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.RootProfile(),
      );
    },
    RootWishlist.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.RootWishlist(),
      );
    },
    ShippingAddressesRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ShippingAddressesScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.SplashScreen(),
      );
    },
    TrackOrderRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.TrackOrderScreen(),
      );
    },
    VerificationCodeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.VerificationCodeScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartScreen]
class CartRoute extends _i26.PageRouteInfo<void> {
  const CartRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CheckOutScreen]
class CheckOutRoute extends _i26.PageRouteInfo<void> {
  const CheckOutRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CheckOutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckOutRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DeliveryInfoScreen]
class DeliveryInfoRoute extends _i26.PageRouteInfo<void> {
  const DeliveryInfoRoute({List<_i26.PageRouteInfo>? children})
      : super(
          DeliveryInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryInfoRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i4.EditProfileScreen]
class EditProfileRoute extends _i26.PageRouteInfo<void> {
  const EditProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i26.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i26.PageRouteInfo<void> {
  const HomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i26.PageRouteInfo<void> {
  const LoginRoute({List<_i26.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainScreen]
class MainRoute extends _i26.PageRouteInfo<void> {
  const MainRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingScreen]
class OnboardingRoute extends _i26.PageRouteInfo<void> {
  const OnboardingRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OrdersScreen]
class OrdersRoute extends _i26.PageRouteInfo<void> {
  const OrdersRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PaymentMethodScreen]
class PaymentMethodRoute extends _i26.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i26.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PaymentScreen]
class PaymentRoute extends _i26.PageRouteInfo<void> {
  const PaymentRoute({List<_i26.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ProductScreen]
class ProductRoute extends _i26.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i27.Key? key,
    required int heroIndex,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            heroIndex: heroIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i26.PageInfo<ProductRouteArgs> page =
      _i26.PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.heroIndex,
  });

  final _i27.Key? key;

  final int heroIndex;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, heroIndex: $heroIndex}';
  }
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i26.PageRouteInfo<void> {
  const ProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ResetPassword]
class ResetPassword extends _i26.PageRouteInfo<void> {
  const ResetPassword({List<_i26.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RootCart]
class RootCart extends _i26.PageRouteInfo<void> {
  const RootCart({List<_i26.PageRouteInfo>? children})
      : super(
          RootCart.name,
          initialChildren: children,
        );

  static const String name = 'RootCart';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i17.RootHome]
class RootHome extends _i26.PageRouteInfo<void> {
  const RootHome({List<_i26.PageRouteInfo>? children})
      : super(
          RootHome.name,
          initialChildren: children,
        );

  static const String name = 'RootHome';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i18.RootProfile]
class RootProfile extends _i26.PageRouteInfo<void> {
  const RootProfile({List<_i26.PageRouteInfo>? children})
      : super(
          RootProfile.name,
          initialChildren: children,
        );

  static const String name = 'RootProfile';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i19.RootWishlist]
class RootWishlist extends _i26.PageRouteInfo<void> {
  const RootWishlist({List<_i26.PageRouteInfo>? children})
      : super(
          RootWishlist.name,
          initialChildren: children,
        );

  static const String name = 'RootWishlist';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ShippingAddressesScreen]
class ShippingAddressesRoute extends _i26.PageRouteInfo<void> {
  const ShippingAddressesRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ShippingAddressesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShippingAddressesRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SignUpScreen]
class SignUpRoute extends _i26.PageRouteInfo<void> {
  const SignUpRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i22.SplashScreen]
class SplashRoute extends _i26.PageRouteInfo<void> {
  const SplashRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i23.TrackOrderScreen]
class TrackOrderRoute extends _i26.PageRouteInfo<void> {
  const TrackOrderRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TrackOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackOrderRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.VerificationCodeScreen]
class VerificationCodeRoute extends _i26.PageRouteInfo<void> {
  const VerificationCodeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          VerificationCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationCodeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WishlistScreen]
class WishlistRoute extends _i26.PageRouteInfo<void> {
  const WishlistRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}
