import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jitak_getex/pages/buisness.dart';
import 'package:jitak_getex/pages/chat.dart';
import 'package:jitak_getex/pages/profile.dart';
import 'package:jitak_getex/pages/search.dart';

class HomeController extends GetxController {
  var currentTab = 0.obs;
  var barcode = 'Tap to scan'.obs;
  var currentScreen = SearchPage().obs;
  var dateIndex = 0.obs;
  var starPageIndex = 1.obs;
  var selectedTime = '12:00'.obs;
  final PageStorageBucket bucket = PageStorageBucket();
  final List screens = [
    SearchPage(),
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

  void selectIndex(int index) {
    dateIndex.value = index;
  }

  void pageChanged(int index) {
    starPageIndex.value = index;
  }

  void changedTime(String time) {
    selectedTime.value = time;
  }
}
