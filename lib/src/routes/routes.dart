import 'package:flutter/material.dart';

import '/src/features/start/screens/start.dart';
import '/src/features/info/screens/info.dart';
import '/src/features/setup/screens/phone.dart';
import '../features/setup/screens/verify_phone.dart';
import '/src/features/home/screens/home.dart';
import '/src/features/search/screens/search.dart';
import '/src/features/product/screens/product_details.dart';
import '/src/features/cart/screens/cart.dart';
import '/src/features/cart/screens/verify_address.dart';
import 'package:tests/src/features/cart/screens/checkout.dart';

class Routes {
  Routes._();

  static Map<String, WidgetBuilder> generateRoutes = {
    "start": (_) => const Start(),
    "info": (_) => const Info(),
    "set-phone": (_) => const SetPhone(),
    "verify-phone": (_) => const VerifyPhone(),
    "home": (_) => const Home(),
    "search": (_) => const Search(),
    "product-details": (_) => const ProductDetails(),
    "cart": (_) => const Cart(),
    "verify-address": (_) => const VerifyAddress(),
    "checkout": (_) => const Checkout(),
  };

  static const String initialRoute = "start";
}