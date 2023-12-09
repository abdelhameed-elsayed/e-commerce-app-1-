import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/colors/colors.dart';
import '../../../config/enstring/enstring.dart';
import '../../../config/images/images.dart';
import '../../../config/mediaquery/mediaquery.dart';
import '../../../controller/bottombar_controller/bottombar_controller.dart';
import '../../../widget/categorieswidget.dart';

class Categories extends StatelessWidget {
    const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:()=>_willPop(context),
      child: Scaffold(
        backgroundColor: AppColors.appBgColor,
        appBar: AppBar(
          title: Text(EnString.categories),
          leading: Image.asset(IconImage.backarrow,color: AppColors.whiteColor,),
          backgroundColor: AppColors.whiteColor,
          foregroundColor: AppColors.blackColor,
          elevation: 0,
          centerTitle: true,
          leadingWidth: 16,
        ),
        body:Column(
          children: [
            SizedBox(height: kIsWeb ? height / 50 : 0),
            WidgetCategories(),
          ],
        ),
      ),
    );
  }

  Future<bool> _willPop(BuildContext context) async {
    Get.find<BottomBarController>()
        .changePage(bottomNavIndex: 0);
    return false;
  }
}
