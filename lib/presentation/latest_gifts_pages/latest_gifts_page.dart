
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_dimensions.dart';
import '../widgets/shoa_and_latest_gifts_widgets/shoa_and_latest_gifts_page_card_widget.dart';

class LatestGiftsPage extends StatelessWidget {
  const LatestGiftsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: AppDimension.width(24, context),
              top: AppDimension.height(46, context),
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(right: AppDimension.width(5, context)),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.chevron_left,
                          size: AppDimension.height(40, context))),
                ),
               
               
                Text(
                  "Gifts",
                  style: TextStyle(
                      fontSize: AppDimension.height(24, context),
                      color: const Color(0xFF191919),
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
                giftAmount: "7,500.00",
                image: "images/shoa_gift_images/shoa_gift_value.png",
                message: "Happy Birthday My Love!!!",
                name: 'Aster Gadisa',
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "3,000.00",
                image: "images/shoa_gift_images/gift_card_logo.png",
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
                image: "images/shoa_gift_images/loyality_card_logo.png",
                message: "Bon Voyage Brother!",
                name: 'Abebe Bikila',
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "2,000.00",
                image: "images/shoa_gift_images/shoa_gift_value.png",
                message: "Happy Birthday My Love!!!",
                name: 'Chaltu James',
                isReceived: false,
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
               const ShoaAndLatestGiftsPageCardWidget(
                date: "24 March 2023 4:10PM",
                giftAmount: "4,500.00",
                image: "images/shoa_gift_images/loyality_card_logo.png",
                message: "Bon Voyage Brother!",
                name: 'Abebe Bikila',
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