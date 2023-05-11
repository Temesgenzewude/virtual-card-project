import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift_with_moment.dart';

import '../../utils/app_dimensions.dart';

class SendGiftsPage extends StatefulWidget {
  SendGiftsPage({super.key});

  @override
  State<SendGiftsPage> createState() => _SendGiftsPageState();
}

class _SendGiftsPageState extends State<SendGiftsPage> {
  TextEditingController PhonenumberController = TextEditingController();
  TextEditingController amountContoller = TextEditingController();
  TextEditingController paymentContoller = TextEditingController();
  TextEditingController captionContoller = TextEditingController();
  bool _viewAll = false;
  late String _selectedAccountToPay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppDimension.height(46, context),
            ),
            Container(
              // height: AppDimension.height(30, context),
              padding: EdgeInsets.only(
                left: AppDimension.width(27, context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      size: AppDimension.height(40, context),
                    ),
                  ),
                  SizedBox(
                    width: AppDimension.width(5, context),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Send',
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: AppDimension.height(24, context),
                              fontFamily: "PoppinsMedium",
                            )),
                        TextSpan(
                            text: '  Gift',
                            style: TextStyle(
                              color: Color(0xFFD3AF35),
                              fontSize: AppDimension.height(24, context),
                              fontFamily: "PoppinsMedium",
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: AppDimension.height(14, context),
            // ),
            Divider(
              thickness: AppDimension.width(1, context),
            ),
            Container(
              height: AppDimension.height(447, context),
              padding: EdgeInsets.only(top: AppDimension.height(35, context)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: AppDimension.width(30, context),
                        right: AppDimension.width(29, context)),
                    height: AppDimension.height(90, context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gift to Send",
                          style: TextStyle(
                              color: const Color(0xFF191919),
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: AppDimension.height(10, context),
                        ),
                        Container(
                          height: AppDimension.height(56, context),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFC9C9C9),
                                  width: AppDimension.width(0.5, context)),
                              borderRadius: BorderRadius.circular(
                                  AppDimension.height(5, context))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: AppDimension.width(15, context),
                              ),
                              Image.asset(
                                "assets/images/shoa_gift.png",
                                height: AppDimension.height(40, context),
                                width: AppDimension.width(40, context),
                              ),
                              SizedBox(
                                width: AppDimension.width(20, context),
                              ),
                              Text(
                                'Shoa Gift Card',
                                style: TextStyle(
                                    fontSize: AppDimension.height(16, context),
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF004BE2)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: AppDimension.width(30, context),
                        right: AppDimension.width(29, context)),
                    height: AppDimension.height(82, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Receiver Phone Number",
                          style: TextStyle(
                              color: const Color(0xFF191919),
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: AppDimension.width(22, context)),
                          height: AppDimension.height(48, context),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFC9C9C9),
                              width: AppDimension.width(0.5, context),
                            ),
                            borderRadius: BorderRadius.circular(
                                AppDimension.height(5, context)),
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: AppDimension.height(15, context),
                              fontFamily: "AxiformaRegular",
                            ),
                            keyboardType: TextInputType.number,
                            controller: PhonenumberController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Your Phone Number',
                              labelText: '',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: AppDimension.height(15, context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: AppDimension.width(30, context),
                        right: AppDimension.width(29, context)),
                    height: AppDimension.height(82, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amount",
                          style: TextStyle(
                              color: const Color(0xFF191919),
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: AppDimension.width(22, context)),
                          height: AppDimension.height(48, context),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFC9C9C9),
                              width: AppDimension.width(0.5, context),
                            ),
                            borderRadius: BorderRadius.circular(
                                AppDimension.height(5, context)),
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: AppDimension.height(15, context),
                              fontFamily: "AxiformaRegular",
                            ),
                            keyboardType: TextInputType.number,
                            controller: amountContoller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Amount',
                              labelText: '',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: AppDimension.height(15, context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: AppDimension.width(30, context),
                        right: AppDimension.width(29, context)),
                    height: AppDimension.height(82, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Caption",
                          style: TextStyle(
                              color: const Color(0xFF191919),
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: AppDimension.width(22, context)),
                          height: AppDimension.height(48, context),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFC9C9C9),
                              width: AppDimension.width(0.5, context),
                            ),
                            borderRadius: BorderRadius.circular(
                                AppDimension.height(5, context)),
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: AppDimension.height(15, context),
                              fontFamily: "AxiformaRegular",
                            ),
                            keyboardType: TextInputType.text,
                            controller: captionContoller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Happy Birthday',
                              labelText: '',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: AppDimension.height(15, context),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // linr
            SizedBox(
              height: AppDimension.height(25, context),
            ),
            Container(
              height: _viewAll
                  ? AppDimension.height(320, context)
                  : AppDimension.height(244, context),
              padding: EdgeInsets.only(
                  left: AppDimension.width(30, context),
                  right: AppDimension.width(29, context)),
              child: Column(
                children: [
                  Container(
                    height: _viewAll
                        ? AppDimension.height(150, context)
                        : AppDimension.height(82, context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pay from",
                          style: TextStyle(
                              color: const Color(0xFF191919),
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                            height: AppDimension.height(48, context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: AppDimension.width(220, context),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                          "assets/images/Abbyssiniya.png",
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _selectedAccountToPay =
                                                "assets/images/Abbyssiniya.png";
                                          });
                                        },
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "assets/images/Telebirr.png",
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        onTap: (() {
                                          setState(() {
                                            _selectedAccountToPay =
                                                "assets/images/Telebirr.png";
                                          });
                                        }),
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "assets/images/CBE_logo.png",
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        onTap: (() {
                                          setState(() {
                                            _selectedAccountToPay =
                                                "assets/images/CBE_logo.png";
                                          });
                                        }),
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "assets/images/Bunna.png",
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        onTap: (() {
                                          setState(() {
                                            _selectedAccountToPay =
                                                "assets/images/Bunna.png";
                                          });
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _viewAll = !_viewAll;
                                    });
                                  },
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                      fontSize:
                                          AppDimension.height(14, context),
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFD3AF35),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        if (_viewAll)
                          SizedBox(
                            width: AppDimension.width(220, context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Image.asset(
                                    "assets/images/Abbyssiniya.png",
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  onTap: (() {
                                    setState(() {
                                      _selectedAccountToPay =
                                          "assets/images/Abbyssiniya.png";
                                    });
                                  }),
                                ),
                                InkWell(
                                  child: Image.asset(
                                    "assets/images/Telebirr.png",
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  onTap: (() {
                                    setState(() {
                                      _selectedAccountToPay =
                                          "assets/images/Telebirr.png";
                                    });
                                  }),
                                ),
                                InkWell(
                                  child: Image.asset(
                                    "assets/images/CBE_logo.png",
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  onTap: (() {
                                    setState(() {
                                      _selectedAccountToPay =
                                          "assets/images/CBE_logo.png";
                                    });
                                  }),
                                ),
                                InkWell(
                                  child: Image.asset(
                                    "assets/images/Bunna.png",
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  onTap: (() {
                                    setState(() {
                                      _selectedAccountToPay =
                                          "assets/images/Bunna.png";
                                    });
                                  }),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppDimension.height(38, context),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: AppDimension.height(48, context),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD3AF35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                AppDimension.height(5, context)),
                          )),
                      onPressed: () {
                        final phone = PhonenumberController.text;
                        final amount = amountContoller.text;
                        final payment = paymentContoller.text;
                        final caption = captionContoller.text;

                        if (_selectedAccountToPay != null) {
                          Get.to(
                            () => sendGiftWithMomentPage(),
                            arguments: [
                              _selectedAccountToPay,
                              phone,
                              amount,
                              payment,
                              caption
                            ],
                          );
                        }
                      },
                      child: Text(
                        "send now",
                        style: TextStyle(
                            fontSize: AppDimension.height(16, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppDimension.height(27, context),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: AppDimension.height(48, context),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFD3AF35),
                          ),
                          borderRadius: BorderRadius.circular(
                              AppDimension.height(5, context))),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFAFCFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  AppDimension.height(5, context)),
                            )),
                        onPressed: () => {},
                        child: Text(
                          "send later",
                          style: TextStyle(
                              fontSize: AppDimension.height(16, context),
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFD3AF35)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: AppDimension.height(80, context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.person),
              Icon(Icons.home),
            ],
          )),
    );
  }
}
