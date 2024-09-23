import 'package:ecommerce_mobile_app/core/routes/app_Router.dart';
import 'package:ecommerce_mobile_app/ecommerce_shop_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    EcommerceShopApp(
      appRouter: AppRouter(),
    ),
  );
}
