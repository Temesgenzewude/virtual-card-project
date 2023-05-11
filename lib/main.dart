import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:virtual_card_project/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.getPayBillsPage(),
      getPages: RouteHelper.routes,
    );
  }
}
