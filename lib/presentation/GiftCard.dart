import 'dart:async';
import 'dart:ffi';

import 'package:virtual_card_project/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GiftCard extends StatefulWidget {
  @override
  State<GiftCard> createState() => _GiftCard();
}

class _GiftCard extends State<GiftCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppDimension.width(20, context),
              top: AppDimension.height(46, context),
            ),
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: AppDimension.width(5, context)),
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.chevron_left,
                          size: AppDimension.height(40, context))),
                ),
                Text(
                  "Gift",
                  style: TextStyle(
                      fontSize: AppDimension.height(24, context),
                      color: Color(0xFF143B58),
                      fontFamily: "PoppinsMedium"),
                ),
                SizedBox(
                  width: AppDimension.width(5, context),
                ),
                Text(
                  "Cards",
                  style: TextStyle(
                      fontSize: AppDimension.height(24, context),
                      color: Color(0xFFD3AF35),
                      fontFamily: "PoppinsRegular"),
                ),
              ],
            ),
          ),
          Divider(
            thickness: AppDimension.width(1, context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimension.width(29, context),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Stored Gift Value",
                        style: TextStyle(
                            fontSize: AppDimension.height(22, context),
                            fontFamily: "PoppinsMedium"),
                      ),
                      SizedBox(
                        height: AppDimension.height(30, context),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: GiftCardContainer(
                                  amount: "23000.00",
                                  giftvalue: 'Santim Pay Gift Value',
                                  img: SvgPicture.asset(
                                    "assets/images/SantimPay.svg",
                                    height: AppDimension.height(21, context),
                                    width: AppDimension.width(26, context),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: GiftCardContainer(
                                  amount: "23000.00",
                                  giftvalue: 'Shoa Gift Value',
                                  img: Image.asset(
                                    "assets/images/shoa.png",
                                    height: AppDimension.height(50, context),
                                    width: AppDimension.width(50, context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppDimension.height(20, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: GiftCardContainer(
                                  amount: "23000.00",
                                  giftvalue: 'EthelCo Gift Value',
                                  img: Image.asset(
                                    "assets/images/Etelco.png",
                                    height: AppDimension.height(50, context),
                                    width: AppDimension.width(50, context),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: GiftCardContainer(
                                  amount: "23000.00",
                                  giftvalue: 'EthelCo Gift Value',
                                  img: Image.asset(
                                    "assets/images/Abadir.png",
                                    height: AppDimension.height(50, context),
                                    width: AppDimension.width(50, context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimension.height(20, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Drafts",
                            style: TextStyle(
                                fontFamily: "PoppinsMedium",
                                fontSize: AppDimension.height(22, context)),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(color: Color(0xFFD3AF35)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppDimension.height(20, context),
                      ),
                      DraftGift(
                        img: Image.asset(
                          "assets/images/shoa.png",
                          height: AppDimension.height(56, context),
                          width: AppDimension.width(56, context),
                        ),
                        amount: "500 Birr",
                        to: "TO 0910101010",
                        giftvalue: "Shoa Gift",
                      ),
                      SizedBox(
                        height: AppDimension.height(20, context),
                      ),
                      DraftGift(
                        img: Image.asset(
                          "assets/images/shoa.png",
                          height: AppDimension.height(56, context),
                          width: AppDimension.width(56, context),
                        ),
                        amount: "500 Birr",
                        to: "TO 0910101010",
                        giftvalue: "Etelco Gift",
                      ),
                      SizedBox(
                        height: AppDimension.height(30, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send Gifts",
                            style: TextStyle(
                                fontFamily: "PoppinsMedium",
                                fontSize: AppDimension.height(22, context)),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(color: Color(0xFFD3AF35)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppDimension.height(7, context),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HorizontalGift(
                              giftvalue: "Abadir Gift Card",
                              img: "assets/images/Abadirrec.png",
                            ),
                            HorizontalGift(
                              giftvalue: "Abadir Gift Card",
                              img: "assets/images/Abadirrec.png",
                            ),
                            HorizontalGift(
                              giftvalue: "Abadir Gift Card",
                              img: "assets/images/Abadirrec.png",
                            ),
                            HorizontalGift(
                              giftvalue: "Abadir Gift Card",
                              img: "assets/images/Abadirrec.png",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(30, context),
                      ),
                      Text(
                        "Latest Moments",
                        style: TextStyle(fontFamily: "PoppinsMedium"),
                      ),
                      PostContainer(Day: '1 day ago', Likes: '489', Message: 'Happy Mothers Day', Name: 'Abebe Bikila', PostPic: Image.asset("assets/images/Post.png"), ProfilePic: Image.asset("assets/images/Profile.png")
                      
,),
PostContainer(Day: '07 Feb 2023  11:20 PM', Likes: '1489', Message: 'Wishing you a hbd my little angel', Name: 'Chaltu James', PostPic: Image.asset("assets/images/Post2.png"), ProfilePic: Image.asset("assets/images/Profile.png")
                      
,),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PostContainer extends StatelessWidget {
  const PostContainer({
    Key? key,
    required this.Name,
    required this.Day,
    required this.ProfilePic,
    required this.PostPic,
    required this.Message,
    required this.Likes,
  }) : super(key: key);
  final String Name;
  final String Day;
  final Widget ProfilePic;
  final Widget PostPic;
  final String Message;
  final String Likes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppDimension.height(30, context)),
      child: Container(
        height: AppDimension.height(471, context),
        width: AppDimension.height(428, context),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.width(20, context),
              vertical: AppDimension.height(10, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: AppDimension.width(10, context)),
                          child: CircleAvatar(
                              radius: AppDimension.height(20, context),
                              child: ProfilePic),
                        ),
                        Column(
                          children: [Text(Name), Text(Day)],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.more_vert),
                  )
                ],
              ),
              SizedBox(
                height: AppDimension.height(10, context),
              ),
              Text(Message),
              SizedBox(
                height: AppDimension.height(10, context),
              ),
              Container(
                height: AppDimension.height(307, context),
                width: AppDimension.width(368, context),
                child: PostPic,
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              ),
              Row(
                children: [
                  SizedBox(
                    width: AppDimension.width(15, context),
                  ),
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/heart.svg"),
                        SizedBox(
                          width: AppDimension.width(5, context),
                        ),
                        Text(Likes),
                        SizedBox(
                          width: AppDimension.width(15, context),
                        ),
                        SvgPicture.asset(
                          "assets/images/share.svg",
                          height: AppDimension.height(24, context),
                          width: AppDimension.width(24, context),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalGift extends StatelessWidget {
  const HorizontalGift({
    Key? key,
    required this.img,
    required this.giftvalue,
  }) : super(key: key);
  final String img;
  final String giftvalue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: AppDimension.width(10, context),
          bottom: AppDimension.height(10, context)),
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: AppDimension.height(130, context),
                width: AppDimension.width(220, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                          img,
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: AppDimension.height(130, context),
                width: AppDimension.width(220, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                        ])),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: AppDimension.width(20, context),
                top: AppDimension.height(90, context)),
            child: Row(
              children: [
                Text(
                  giftvalue,
                  style: TextStyle(
                      color: Colors.white, fontFamily: "PoppinsSemiBold"),
                ),
                SizedBox(
                  width: AppDimension.width(6, context),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: AppDimension.width(67, context),
                    height: AppDimension.height(24, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFD3AF35),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: AppDimension.width(5, context),
                          right: AppDimension.width(5, context)),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: 5,
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: AppDimension.height(17, context),
                            ),
                          ),
                          Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "PoppinsRegular",
                                fontSize: AppDimension.height(15, context)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DraftGift extends StatelessWidget {
  const DraftGift({
    Key? key,
    required this.giftvalue,
    required this.to,
    required this.amount,
    required this.img,
  }) : super(key: key);
  final String giftvalue;
  final String to;
  final String amount;
  final Widget img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppDimension.height(10, context),
            horizontal: AppDimension.width(5, context)),
        child: Row(
          children: [
            img,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Row(
                  
                  children: [
                    Text(
                      giftvalue,
                      style:
                          TextStyle(fontSize: AppDimension.height(20, context)),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(left:AppDimension.width(150, context)),
                      child: SvgPicture.asset("assets/images/pencil-square.svg"),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimension.height(10, context),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: AppDimension.width(3, context)),
                      child: Text(
                        amount,
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context)),
                      ),
                    ),
                    SizedBox(
                      width: AppDimension.width(105, context),
                    ),
                    Text(to),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GiftCardContainer extends StatelessWidget {
  const GiftCardContainer({
    Key? key,
    required this.giftvalue,
    required this.amount,
    required this.img,
  }) : super(key: key);
  final String giftvalue;
  final String amount;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(AppDimension.width(10, context))),
      width: AppDimension.width(157, context),
      height: AppDimension.height(140, context),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppDimension.height(3, context),
            horizontal: AppDimension.width(3, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppDimension.height(10, context),
                      horizontal: AppDimension.width(10, context)),
                  child: CircleAvatar(
                    backgroundColor: giftvalue == "Santim Pay Gift Value"
                        ? Color(0XFF969696)
                        : Color(0XFFFFFFFF),
                    radius: AppDimension.height(25, context),
                    child: CircleAvatar(
                        radius: AppDimension.height(24, context),
                        backgroundColor: Color(0xFFFFFFFF),
                        child: img),
                  ),
                ),
                Container(
                    height: AppDimension.height(40, context),
                    width: AppDimension.width(70, context),
                    child: Text(
                      giftvalue,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppDimension.height(15, context),
                          fontFamily: "PoppinsRegular"),
                    )),
                SizedBox(
                  width: AppDimension.width(10, context),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: AppDimension.width(10, context),
              ),
              child: Text(
                amount,
                style: TextStyle(
                    fontFamily: "PoppinsSemiBold",
                    fontSize: AppDimension.height(30, context)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
