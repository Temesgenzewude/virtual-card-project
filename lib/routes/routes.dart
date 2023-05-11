import 'package:get/get.dart';
import 'package:virtual_card_project/presentation/gift_card_widgets/gift_card_page.dart';
import 'package:virtual_card_project/presentation/latest_gifts_pages/latest_gifts_page.dart';
import 'package:virtual_card_project/presentation/pay_bills_page/pay_bills_page.dart';
import 'package:virtual_card_project/presentation/send_gift_pages/send_gift.dart';
import 'package:virtual_card_project/presentation/shoa_gifts_pages/shoa_gifts_pages.dart';

class RouteHelper {
  static const String giftCardPage = "/gift-card-page";
  static const String latestGiftsPage = "/latest-gifts-page";
  static const String shoaGiftsValuePage = '/shoa-gifts-value-page';
  static const String payBillsPage = '/pay-bills-page';

  static const String sendGiftPage = '/send-gift-page';

  static getGiftCardPage() => '$giftCardPage';

  static getLatestGiftsPage() => '$latestGiftsPage';
  static String getShoaGiftsValuePage() => '$shoaGiftsValuePage';
  static String getPayBillsPage() => '$payBillsPage';
  static String getSendGiftPage() => '$sendGiftPage';

  static List<GetPage> routes = [
    GetPage(
        name: payBillsPage,
        page: (() {
          return PayBills();
        }),
        transition: Transition.fadeIn),
    GetPage(
      name: giftCardPage,
      page: (() {
        return GiftCardPage();
      }),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: sendGiftPage,
      page: (() {
        return SendGiftsPage();
      }),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: latestGiftsPage,
      page: (() {
        return LatestGiftsPage();
      }),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: shoaGiftsValuePage,
      page: (() {
        return ShoaGiftsPage();
      }),
      transition: Transition.fadeIn,
    ),
  ];
}
