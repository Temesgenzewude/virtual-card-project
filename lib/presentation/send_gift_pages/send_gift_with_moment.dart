import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/camera_page.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/gift_sent_alert_box.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift.dart';
import 'package:image_picker/image_picker.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift_with_moment_final.dart';

import '../../utils/app_dimensions.dart';

class sendGiftWithMomentPage extends StatefulWidget {
  sendGiftWithMomentPage({super.key});

  @override
  State<sendGiftWithMomentPage> createState() => _sendGiftWithMomentPageState();
}

class _sendGiftWithMomentPageState extends State<sendGiftWithMomentPage> {
  TextEditingController PhonenumberController = TextEditingController();
  TextEditingController amountContoller = TextEditingController();
  TextEditingController paymentContoller = TextEditingController();
  TextEditingController captionContoller = TextEditingController();
  File? _imageFile;
  late String selectedAccount;

  @override
  void initState() {
    super.initState();
    final List<String> arguments = Get.arguments;
    PhonenumberController.text = arguments[1];
    amountContoller.text = arguments[2];
    paymentContoller.text = arguments[3];
    captionContoller.text = arguments[4];
    selectedAccount = arguments[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppDimension.height(44, context),
            ),
            Container(
              height: AppDimension.height(30, context),
              padding: EdgeInsets.only(
                left: AppDimension.width(21, context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Icon(
                      Icons.chevron_left,
                      size: AppDimension.height(24, context),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Send',
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: AppDimension.height(20, context),
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: '  Gift',
                            style: TextStyle(
                              color: Color(0xFFD3AF35),
                              fontSize: AppDimension.height(20, context),
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppDimension.height(14, context),
            ),
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
              height: AppDimension.height(263, context),
              padding: EdgeInsets.only(
                  left: AppDimension.width(30, context),
                  right: AppDimension.width(29, context)),
              child: Column(
                children: [
                  Container(
                    height: AppDimension.height(100, context),
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
                          height: AppDimension.height(5, context),
                        ),
                        Text(
                          "Account to pay from",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: AppDimension.height(12, context),
                              color: Color(0xFFA9A9A9)),
                        ),
                        SizedBox(
                          height: AppDimension.height(13, context),
                        ),
                        SizedBox(
                          height: AppDimension.height(48, context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(selectedAccount),
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
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color(0xFFD3AF35),
                      )),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimension.height(5, context)),
                              )),
                          onPressed: () async {
                            final pickedFile = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);

                            setState(() {
                              if (pickedFile != null) {
                                _imageFile = File(pickedFile.path);

                                final phone = PhonenumberController.text;
                                final amount = amountContoller.text;
                                final payment = paymentContoller.text;
                                final caption = captionContoller.text;
                                Get.to(
                                  sendGiftWithMomentPageFinal(),
                                  arguments: [
                                    _imageFile,
                                    phone,
                                    amount,
                                    payment,
                                    caption,
                                    selectedAccount,
                                  ],
                                );
                              }
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload_rounded,
                                color: Color(0xFFD3AF35),
                              ),
                              SizedBox(
                                width: AppDimension.width(5, context),
                              ),
                              Text(
                                "Upload",
                                style: TextStyle(
                                  fontSize: AppDimension.height(16, context),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFD3AF35),
                                ),
                              ),
                            ],
                          )),
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
                              backgroundColor: Color(0xFFD3AF35),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimension.height(5, context)),
                              )),
                          onPressed: () async {
                            await availableCameras().then(
                              (value) => Get.to(
                                () => CameraPage(
                                  cameras: value,
                                  phone: PhonenumberController.text,
                                  amount: amountContoller.text,
                                  payment: paymentContoller.text,
                                  caption: captionContoller.text,
                                  selectedAccount: selectedAccount,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo_camera_sharp,
                                color: Color(0xFFFFFFFF),
                              ),
                              SizedBox(
                                width: AppDimension.width(10, context),
                              ),
                              Text(
                                "Capture Moment",
                                style: TextStyle(
                                  fontSize: AppDimension.height(16, context),
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          )),
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
