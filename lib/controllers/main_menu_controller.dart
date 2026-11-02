import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/menu/history_page.dart';
import 'package:my_app/menu/home_page.dart';
import 'package:my_app/menu/profile_page.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;
  
  void chancePage(index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(),HistoryPage(),ProfilePage() ];
}