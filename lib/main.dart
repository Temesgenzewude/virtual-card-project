import 'dart:ui';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:virtual_card_project/presentation/pay_bills.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/camera_page.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/gift_sent_alert_box.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift_with_moment.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift_with_moment_final.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home:SendGiftsPage(),
    );
  }
}