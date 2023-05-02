import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_dimensions.dart';

class GiftSentAlertBox extends StatefulWidget {
  const GiftSentAlertBox({super.key});

  @override
  State<GiftSentAlertBox> createState() => _GiftSentAlertBoxState();
}

class _GiftSentAlertBoxState extends State<GiftSentAlertBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(AppDimension.height(15, context)))),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: AppDimension.width(24, context),
            height: AppDimension.height(30, context),
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.close_outlined,
                size: AppDimension.height(18, context),
              ),
            ),
          )
        ],
      ),
      content: SizedBox(
        width: AppDimension.width(368, context),
        height: AppDimension.height(192, context),
        child: Column(
          children: [
            Container(
              height: AppDimension.height(75, context),
              width: AppDimension.width(75, context),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xFFD3AF35),
                    width: AppDimension.width(3, context)),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: SizedBox(
                  child: FittedBox(
                    child: Icon(
                      Icons.check,
                      color: Color(0xFFD3AF35),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: AppDimension.height(20, context),
            ),
            Text(
              "Gift Sent",
              style: TextStyle(
                  fontSize: AppDimension.height(26, context),
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2F2E41)),
            ),
            SizedBox(
              height: AppDimension.height(20, context),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'You have successfully gifted ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF969696),
                        fontSize: AppDimension.height(14, context),
                        fontFamily: 'AxiFormaRegular'),
                  ),
                  TextSpan(
                    text: 'Abeba Bikila ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2F2E41),
                        fontSize: AppDimension.height(14, context),
                        fontFamily: 'AxiFormaRegular'),
                  ),
                  TextSpan(
                    text: '(0943837237) ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2F2E41),
                        fontSize: AppDimension.height(14, context),
                        fontFamily: 'AxiFormaMedium'),
                  ),
                  TextSpan(
                    text: 'with 2,000 ETB ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF969696),
                        fontSize: AppDimension.height(14, context),
                        fontFamily: 'AxiFormaRegular'),
                  ),
                  TextSpan(
                    text: 'Shoa Gift',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F3D56),
                      fontSize: AppDimension.height(16, context),
                      fontFamily: 'AxiFormaMedium',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              height: AppDimension.height(40, context),
              width: AppDimension.width(135, context),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFD3AF35),
                ),
                borderRadius: BorderRadius.circular(
                  AppDimension.height(5, context),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFAFCFF),
                ),
                onPressed: () => {},
                child: Text(
                  "View Moment",
                  style: TextStyle(
                      color: Color(0xFFD3AF35),
                      fontSize: AppDimension.height(16, context),
                      fontWeight: FontWeight.w400,
                      fontFamily: "AxiFormaRegular"),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: AppDimension.height(45, context),
        )
      ],
    );
  }
}
