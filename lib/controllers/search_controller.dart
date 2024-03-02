import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jitak_non_getex/pages/buisness.dart';
import 'package:jitak_non_getex/pages/chat.dart';
import 'package:jitak_non_getex/pages/profile.dart';
import 'package:jitak_non_getex/pages/search.dart';
//
// class HomeController extends GetxController {
//   var currentTab = 0.obs;
//   var currentScreen = const SearchPage();
//   final bucket = PageStorageBucket();
//   var barcode = 'Tap to scan'.obs;
//
//   void changeTab(int index) {
//     currentTab.value = index;
//     // currentScreen.value = screens[index];
//   }
//
//   void onScan(String value) {
//     debugPrint(value);
//     barcode(value);
//   }
// }

class HomeController extends GetxController {
  var currentTab = 0.obs;
  var barcode = 'Tap to scan'.obs;
  var currentScreen = const SearchPage().obs;
  final PageStorageBucket bucket = PageStorageBucket();
  final List screens = [
    const SearchPage(),
    const Buisness(),
    const Chat(),
    const Profile(),
  ];

  void changeTab(int index) {
    currentTab.value = index;
  }

  void changeScreen(index) {
    currentScreen.value = index;
  }

  void onScan(String value) {
    debugPrint(value);
    barcode(value);
  }
}
