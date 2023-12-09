import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/pages/homecategories/categories.dart';
import '../../view/pages/homecategories/fashion_category.dart';
import '../../view/pages/homescreen.dart';
import '../../view/pages/mycartscreen/mycartscreen.dart';
import '../../view/pages/profile/profile.dart';

class BottomBarController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt pageIndex = 0.obs;
  RxBool isExit = false.obs;
  RxBool isClick = false.obs;

  void changePageList(bool value) {
    if (value == true) {
      _pageList.value = [
        HomeScreen(bottomBarController: this),
        FashionCategory(isClick: true),
        MyCart(isBackButtonShow: false),
        const Profile(),
      ];
    } else if (value == false) {
      _pageList.value = [
        HomeScreen(bottomBarController: this),
        const Categories(),
        MyCart(isBackButtonShow: false),
        const Profile(),
      ];
    }
  }

  void changePage({required int bottomNavIndex, int? pageIndexValue}) {
    if (pageIndexValue == null) {
      pageIndex.value = currentIndex.value;
    }
    currentIndex.value = bottomNavIndex;
    pageIndex.value = pageIndexValue ?? bottomNavIndex;
    update();
  }

  onClick(val) {
    changePage(bottomNavIndex: val);
    update();
  }

  Rx<Widget> get currentPage => _pageList[pageIndex.value].obs;

  final RxList<Widget> _pageList = <Widget>[].obs;

  @override
  void onInit() {
    _pageList.value = [
      HomeScreen(bottomBarController: this),
      const Categories(),
      MyCart(isBackButtonShow: false),
      const Profile(),
    ];
    changePageList(false);
    super.onInit();
  }
}
