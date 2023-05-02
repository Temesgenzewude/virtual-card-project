import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_card_project/utils/app_dimensions.dart';

class PayBills extends StatefulWidget {
  const PayBills({super.key});

  @override
  State<PayBills> createState() => _PayBillsState();
}

class _PayBillsState extends State<PayBills> {
  final ScrollController _scrollController = ScrollController();
  TextEditingController _searchController = TextEditingController();
  bool _showAll = false;

  void _scrollToContainer(int index) {
    num offset = index * AppDimension.height(136, context);
    _scrollController.animateTo(
      offset as double,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: AppDimension.height(40, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.chevron_left),
                    iconSize: AppDimension.height(33, context),
                    color: Color(0xFF143B58),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Pay',
                            style: TextStyle(
                              color: Color(0xFF191919),
                              fontSize: AppDimension.height(20, context),
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(
                            text: '  Bills',
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
              Divider(
                thickness: AppDimension.width(1, context),
              ),
              SizedBox(
                height: AppDimension.height(28, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppDimension.width(24, context),
                    right: AppDimension.width(25, context)),
                child: SizedBox(
                  height: AppDimension.height(118, context),
                  width: AppDimension.width(370, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Buy",
                        style: TextStyle(
                            fontSize: AppDimension.height(17, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919)),
                      ),
                      Container(
                        height: AppDimension.height(77, context),
                        width: AppDimension.width(370, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              AppDimension.height(5, context)),
                          border: Border.all(
                            color: Color(0xFFD7BD8C),
                          ),
                          color: Color(0xFFFBF6CC),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: AppDimension.width(16, context),
                              right: AppDimension.width(21, context)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Gift Cards',
                                style: TextStyle(
                                  fontSize: AppDimension.height(24, context),
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF2F2E41),
                                ),
                              ),
                              Icon(Icons.card_giftcard_outlined,color: Color(0xFFD7BD8C),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppDimension.width(24, context),
                    right: AppDimension.width(25, context)),
                child: SizedBox(
                  height: AppDimension.height(83, context),
                  width: AppDimension.width(370, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select a Utility to Pay For",
                        style: TextStyle(
                            fontSize: AppDimension.height(17, context),
                            color: Color(0xFF191919),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'PoppinsRegular'),
                      ),
                      SizedBox(
                        height: AppDimension.height(42, context),
                        width: AppDimension.width(368, context),
                        child: TextField(
                          controller: _searchController,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontFamily: 'PoppinsRegular',
                              fontSize: AppDimension.height(14, context),
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF969696),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimension.height(5, context)),
                                borderSide: BorderSide(
                                    width: AppDimension.width(1, context))),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search_outlined),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(29, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppDimension.width(24, context),
                    right: AppDimension.width(25, context)),
                child: SizedBox(
                  height: AppDimension.height(172, context),
                  width: AppDimension.width(357, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => _scrollToContainer(1),
                            child: SizedBox(
                              height: AppDimension.height(65, context),
                              width: AppDimension.width(60, context),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/water_utility.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Water Utility",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(64, context),
                            width: AppDimension.width(66, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(2),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Electric.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Electric Utility",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(65, context),
                            width: AppDimension.width(60, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(3),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Transport.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Transport",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(65, context),
                            width: AppDimension.width(60, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(4),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Ecommerce.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Ecommerce",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: AppDimension.height(60, context),
                            width: AppDimension.width(71, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Entertainment.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Entertainment",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(65, context),
                            width: AppDimension.width(60, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(6),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Internet.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Internet",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(65, context),
                            width: AppDimension.width(60, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(7),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Passport.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Immigration",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(65, context),
                            width: AppDimension.width(60, context),
                            child: GestureDetector(
                              onTap: () => _scrollToContainer(8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/Tax.png',
                                    height: AppDimension.height(40, context),
                                    width: AppDimension.width(40, context),
                                  ),
                                  Text(
                                    "Tax",
                                    style: TextStyle(
                                        fontSize:
                                            AppDimension.height(10, context),
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191919),
                                        fontFamily: 'PoppinsRegular'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(38, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppDimension.width(24, context),
                    right: AppDimension.width(25, context)),
                child: SizedBox(
                  height: _showAll
                      ? AppDimension.height(281, context)
                      : AppDimension.height(181, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Water Utility Payment",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Expanded(
                        child: Container(
                          height: AppDimension.height(150, context),
                          width: AppDimension.width(368, context),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                  width: AppDimension.width(1, context))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: AppDimension.height(31, context),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: AppDimension.width(265, context),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showAll = !_showAll;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            "All",
                                            style: TextStyle(
                                                fontSize: AppDimension.height(
                                                    10, context),
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF004BE2),
                                                fontFamily: 'PoppinsRegular'),
                                          ),
                                          _showAll
                                              ? Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Color(0xFF004BE2),
                                                  size: AppDimension.height(
                                                      20, context),
                                                )
                                              : Icon(
                                                  Icons.keyboard_arrow_up,
                                                  color: Color(0xFF004BE2),
                                                  size: AppDimension.height(
                                                      20, context),
                                                )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height:
                                            AppDimension.height(103, context),
                                        width: AppDimension.width(68, context),
                                        child: GestureDetector(
                                          onTap: () => {},
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/images/AAWSA.png',
                                                height: AppDimension.height(
                                                    40, context),
                                                width: AppDimension.width(
                                                    45, context),
                                              ),
                                              Text(
                                                "Addis Ababa Water & Sewerage Authority",
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimension.height(
                                                            10, context),
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF191919),
                                                    fontFamily:
                                                        'PoppinsRegular'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            AppDimension.height(103, context),
                                        width: AppDimension.width(68, context),
                                        child: GestureDetector(
                                          onTap: () => {},
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/images/ADWSA.png',
                                                height: AppDimension.height(
                                                    40, context),
                                                width: AppDimension.width(
                                                    40, context),
                                              ),
                                              Text(
                                                "Adama Water & Sewerage Authority",
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimension.height(
                                                            10, context),
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF191919),
                                                    fontFamily:
                                                        'PoppinsRegular'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            AppDimension.height(103, context),
                                        width: AppDimension.width(68, context),
                                        child: GestureDetector(
                                          onTap: () => {},
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/BDWSA.png',
                                                height: AppDimension.height(
                                                    40, context),
                                                width: AppDimension.width(
                                                    40, context),
                                              ),
                                              Text(
                                                "Bahir Dar Water & Sewerage Authority",
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimension.height(
                                                            10, context),
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF191919),
                                                    fontFamily:
                                                        'PoppinsRegular'),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            AppDimension.height(103, context),
                                        width: AppDimension.width(68, context),
                                        child: GestureDetector(
                                          onTap: () => {},
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/HAWSA.png',
                                                height: AppDimension.height(
                                                    40, context),
                                                width: AppDimension.width(
                                                    40, context),
                                              ),
                                              Text(
                                                "Hawassa Water & Sewerage Authority",
                                                style: TextStyle(
                                                    fontSize:
                                                        AppDimension.height(
                                                            10, context),
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF191919),
                                                    fontFamily:
                                                        'PoppinsRegular'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  if (_showAll)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          height:
                                              AppDimension.height(103, context),
                                          width:
                                              AppDimension.width(68, context),
                                          child: GestureDetector(
                                            onTap: () => {},
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/AAWSA.png',
                                                  height: AppDimension.height(
                                                      40, context),
                                                  width: AppDimension.width(
                                                      40, context),
                                                ),
                                                Text(
                                                  "Addis Ababa Water & Sewerage Authority",
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimension.height(
                                                              10, context),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF191919),
                                                      fontFamily:
                                                          'PoppinsRegular'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              AppDimension.height(103, context),
                                          width:
                                              AppDimension.width(68, context),
                                          child: GestureDetector(
                                            onTap: () => {},
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/ADWSA.png',
                                                  height: AppDimension.height(
                                                      40, context),
                                                  width: AppDimension.width(
                                                      40, context),
                                                ),
                                                Text(
                                                  "Adama Water & Sewerage Authority",
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimension.height(
                                                              10, context),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF191919),
                                                      fontFamily:
                                                          'PoppinsRegular'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              AppDimension.height(103, context),
                                          width:
                                              AppDimension.width(68, context),
                                          child: GestureDetector(
                                            onTap: () => {},
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/BDWSA.png',
                                                  height: AppDimension.height(
                                                      40, context),
                                                  width: AppDimension.width(
                                                      40, context),
                                                ),
                                                Text(
                                                  "Bahir Dar Water & Sewerage Authority",
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimension.height(
                                                              10, context),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF191919),
                                                      fontFamily:
                                                          'PoppinsRegular'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              AppDimension.height(103, context),
                                          width:
                                              AppDimension.width(68, context),
                                          child: GestureDetector(
                                            onTap: () => {},
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/images/HAWSA.png',
                                                  height: AppDimension.height(
                                                      40, context),
                                                  width: AppDimension.width(
                                                      40, context),
                                                ),
                                                Text(
                                                  "Hawassa Water & Sewerage Authority",
                                                  style: TextStyle(
                                                      fontSize:
                                                          AppDimension.height(
                                                              10, context),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF191919),
                                                      fontFamily:
                                                          'PoppinsRegular'),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(36, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(131, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Electric Utility Payment",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(100, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          children: [
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/EEU.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Ethiopian Electric Utility",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: AppDimension.width(24, context),
                    right: AppDimension.width(25, context)),
                child: SizedBox(
                  height: AppDimension.height(200, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transport",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(169, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: AppDimension.height(65, context),
                                  width: AppDimension.width(60, context),
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/Seregela.png',
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        Text(
                                          "Seregala",
                                          style: TextStyle(
                                              fontSize: AppDimension.height(
                                                  10, context),
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF191919),
                                              fontFamily: 'PoppinsRegular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimension.height(65, context),
                                  width: AppDimension.width(60, context),
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/Feres.png',
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        Text(
                                          "Feres",
                                          style: TextStyle(
                                              fontSize: AppDimension.height(
                                                  10, context),
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF191919),
                                              fontFamily: 'PoppinsRegular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimension.height(65, context),
                                  width: AppDimension.width(60, context),
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/Ride.png',
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        Text(
                                          "Ride",
                                          style: TextStyle(
                                              fontSize: AppDimension.height(
                                                  10, context),
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF191919),
                                              fontFamily: 'PoppinsRegular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: AppDimension.height(65, context),
                                  width: AppDimension.width(60, context),
                                  child: GestureDetector(
                                    onTap: () => {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/images/ZayRide.png',
                                          height:
                                              AppDimension.height(40, context),
                                          width:
                                              AppDimension.width(40, context),
                                        ),
                                        Text(
                                          "ZayRide",
                                          style: TextStyle(
                                              fontSize: AppDimension.height(
                                                  10, context),
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF191919),
                                              fontFamily: 'PoppinsRegular'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: AppDimension.width(100, context)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: AppDimension.height(65, context),
                                    width: AppDimension.width(60, context),
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/images/Polo_Trip.png',
                                            height: AppDimension.height(
                                                40, context),
                                            width:
                                                AppDimension.width(40, context),
                                          ),
                                          Text(
                                            "Polo Trip",
                                            style: TextStyle(
                                                fontSize: AppDimension.height(
                                                    10, context),
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF191919),
                                                fontFamily: 'PoppinsRegular'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppDimension.height(65, context),
                                    width: AppDimension.width(60, context),
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/images/Rica.png',
                                            height: AppDimension.height(
                                                40, context),
                                            width:
                                                AppDimension.width(40, context),
                                          ),
                                          Text(
                                            "Rica",
                                            style: TextStyle(
                                                fontSize: AppDimension.height(
                                                    10, context),
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF191919),
                                                fontFamily: 'PoppinsRegular'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppDimension.height(64, context),
                                    width: AppDimension.width(68, context),
                                    child: GestureDetector(
                                      onTap: () => {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            'assets/images/Airlines_ticket.png',
                                            height: AppDimension.height(
                                                40, context),
                                            width:
                                                AppDimension.width(40, context),
                                          ),
                                          Text(
                                            "Airlines Ticket",
                                            style: TextStyle(
                                                fontSize: AppDimension.height(
                                                    10, context),
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF191919),
                                                fontFamily: 'PoppinsRegular'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(131, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ecommerce",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(100, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          children: [
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(16, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Deliver_Addis.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Deliver Addis",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/beU_Delivery.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Beu Delivery",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Zmall.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Zmall Delivery",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Tikus_Delivery.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Tikus Delivery",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(131, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Entertainment",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(100, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          children: [
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(16, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/DSTV.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "DSTV",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Canal+.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "CANAL+",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(131, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Internet Service",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(100, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          children: [
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(13, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Websprix.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "WebSprix",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: AppDimension.width(68, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(21, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Ethiotel.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Ethio Telecom",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(25, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(141, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Immigration",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(108, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          children: [
                            Container(
                              width: AppDimension.width(90, context),
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(10, context)),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/Passport.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Immigration and Citizenship Sevice",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(25, context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: AppDimension.width(24, context),
                  right: AppDimension.width(25, context),
                ),
                child: SizedBox(
                  height: AppDimension.height(154, context),
                  width: AppDimension.width(368, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tax",
                        style: TextStyle(
                            fontSize: AppDimension.height(15, context),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF191919),
                            fontFamily: 'PoppinsRegular'),
                      ),
                      Container(
                        height: AppDimension.height(123, context),
                        width: AppDimension.width(368, context),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xFFE6E6E6),
                                width: AppDimension.width(1, context))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: AppDimension.width(10, context)),
                              width: AppDimension.width(100, context),
                              height: AppDimension.height(90, context),
                              child: GestureDetector(
                                onTap: () => {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/AA_Revenue.png',
                                      height: AppDimension.height(40, context),
                                      width: AppDimension.width(40, context),
                                    ),
                                    Text(
                                      "Addis Ababa City Administration Revenue Bureau",
                                      style: TextStyle(
                                          fontSize:
                                              AppDimension.height(10, context),
                                          color: Color(0xFF191919),
                                          fontFamily: 'PoppinsRegular'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppDimension.height(20, context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
