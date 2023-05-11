// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:virtual_card_project/routes/routes.dart';

import '../../utils/app_dimensions.dart';
import '../widgets/shoa_and_latest_gifts_widgets/shoa_and_latest_gifts_page_card_widget.dart';

class ShoaGiftsPage extends StatelessWidget {
  const ShoaGiftsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: AppDimension.width(27, context),
              top: AppDimension.height(46, context),
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(right: AppDimension.width(5, context)),
                  child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.chevron_left,
                          size: AppDimension.height(40, context))),
                ),
                Text(
                  "Shoa",
                  style: TextStyle(
                      fontSize: AppDimension.height(24, context),
                      color: const Color(0xFF191919),
                      fontFamily: "PoppinsMedium"),
                ),
                SizedBox(
                  width: AppDimension.width(5, context),
                ),
                Text(
                  "Gifts",
                  style: TextStyle(
                      fontSize: AppDimension.height(24, context),
                      color: const Color(0xFFD3AF35),
                      fontFamily: "PoppinsRegular"),
                ),
              ],
            ),
          ),
          Divider(
            thickness: AppDimension.width(1, context),
          ),
          SizedBox(
            height: AppDimension.height(30, context),
          ),
          Container(
            margin: EdgeInsets.only(
              left: AppDimension.width(27, context),
            ),
            child: Text(
              "Shoa Gift Value",
              style: TextStyle(
                  fontFamily: "PoppinsMedium",
                  fontSize: AppDimension.height(18, context),
                  color: const Color(0xFF2F2E41)),
            ),
          ),
          SizedBox(
            height: AppDimension.height(30, context),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getSendGiftPage());
            },
            child: Container(
              height: AppDimension.height(80, context),
              padding: EdgeInsets.only(
                top: AppDimension.height(20, context),
                bottom: AppDimension.height(20, context),
                left: AppDimension.width(10, context),
                right: AppDimension.width(10, context),
              ),
              margin: EdgeInsets.only(
                left: AppDimension.width(27, context),
                right: AppDimension.width(27, context),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  AppDimension.height(5, context),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: AppDimension.height(40, context),
                          width: AppDimension.height(40, context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppDimension.height(20, context),
                            ),
                          ),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "images/shoa_gift_images/shoa_gift_value.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppDimension.width(5, context),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shoa ",
                              style: TextStyle(
                                color: const Color(0xFF2F2E41),
                                fontFamily: "PoppinsMedium",
                                fontSize: AppDimension.height(12, context),
                              ),
                            ),
                            SizedBox(
                              height: AppDimension.height(3, context),
                            ),
                            Text(
                              "Gift Value",
                              style: TextStyle(
                                color: const Color(0xFF2F2E41),
                                fontFamily: "PoppinsMedium",
                                fontSize: AppDimension.height(12, context),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      "4,500.00",
                      style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        fontSize: AppDimension.height(30, context),
                        color: const Color(0xFF2F2E41),
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: AppDimension.height(40, context),
          ),
          Container(
            margin: EdgeInsets.only(
              left: AppDimension.width(27, context),
            ),
            child: Text(
              "Latest Gifts",
              style: TextStyle(
                  fontFamily: "PoppinsMedium",
                  fontSize: AppDimension.height(18, context),
                  color: const Color(0xFF2F2E41)),
            ),
          ),
          SizedBox(
            height: AppDimension.height(20, context),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: [
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "4,500.00",
                image: "images/shoa_gift_images/gift_to_mam.png",
                message: "Happy Birthday Mama!!!",
                name: 'Abebe Bikila',
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "2,000.00",
                image: "images/shoa_gift_images/merry_xmas.png",
                message: "Merry Christmas My Love!",
                name: 'Chaltu James',
                isReceived: false,
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "4,500.00",
                image: "images/shoa_gift_images/gift_to_mam.png",
                message: "Happy Birthday Mama!!!",
                name: 'Abebe Bikila',
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "2,000.00",
                image: "images/shoa_gift_images/merry_xmas.png",
                message: "Merry Christmas My Love!",
                name: 'Chaltu James',
                isReceived: false,
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "4,500.00",
                image: "images/shoa_gift_images/gift_to_mam.png",
                message: "Happy Birthday Mama!!!",
                name: 'Abebe Bikila',
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "2,000.00",
                image: "images/shoa_gift_images/merry_xmas.png",
                message: "Merry Christmas My Love!",
                name: 'Chaltu James',
                isReceived: false,
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
            ]),
          )),
        ],
      ),
    );
  }
}
