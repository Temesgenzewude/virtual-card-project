import 'package:flutter/material.dart';

import '../../../utils/app_dimensions.dart';

class ShoaAndLatestGiftsPageCardWidget extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final String image;
  final String giftAmount;
  final bool isReceived;
  const ShoaAndLatestGiftsPageCardWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.date,
    required this.image,
    required this.giftAmount,
    this.isReceived = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimension.height(110, context),
      padding: EdgeInsets.only(
        left: AppDimension.width(10, context),
        right: AppDimension.width(10, context),
        top: AppDimension.height(10, context),
        bottom: AppDimension.height(10, context),
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
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFEAEAEA),
                offset: Offset(1, 0),
                spreadRadius: 1,
                blurRadius: 1),
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          name,
          style: TextStyle(
              fontFamily: "PoppinsMedium",
              fontSize: AppDimension.height(14, context),
              color: const Color(0xFF2F2E41)),
        ),
        SizedBox(
          height: AppDimension.height(7, context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: AppDimension.height(60, context),
                  width: AppDimension.height(60, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppDimension.height(5, context),
                    ),
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
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
                      message,
                      style: TextStyle(
                        color: const Color(0xFF2F2E41),
                        fontFamily: "PoppinsRegular",
                        fontSize: AppDimension.height(14, context),
                      ),
                    ),
                    SizedBox(
                      height: AppDimension.height(3, context),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: const Color(0xFF969696),
                        fontFamily: "PoppinsRegular",
                        fontSize: AppDimension.height(10, context),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  isReceived ? "Received" : "Sent",
                  style: TextStyle(
                    fontFamily: "PoppinsRegular",
                    fontSize: AppDimension.height(14, context),
                    color: const Color(0xFF969696),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      isReceived ? Icons.add : Icons.remove,
                      color: const Color(0xFF004BE2),
                      size: AppDimension.height(14, context),
                    ),
                    Text(
                      giftAmount,
                      style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        fontSize: AppDimension.height(14, context),
                        color: const Color(0xFF004BE2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
