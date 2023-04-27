import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_card_project/presentation/widgets/gift_card_widgets/GiftCard.dart';
import 'package:virtual_card_project/presentation/latest_gifts_pages/latest_gifts_page.dart';
import 'package:virtual_card_project/presentation/shoa_gifts_pages/shoa_gifts_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gifts Card',
      
      home: LatestGiftsPage()


    );
  }
}

