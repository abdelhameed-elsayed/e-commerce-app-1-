import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/customappbar/custom_appbar.dart';
import '../../../../config/approutes/approutes.dart';
import '../../../../config/colors/colors.dart';
import '../../../../config/enstring/enstring.dart';
import '../../../../config/fontfamily.dart';
import '../../../../config/mediaquery/mediaquery.dart';
import '../../../../controller/switchcontroller/switchcontroller.dart';
import '../../../../utils/sizeconfig/sizeconfig.dart';
import '../../../../utils/textstyle/textstyle.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

 final SwitchController _switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      appBar: CustomAppBar(title: EnString.accountSetting, onPressed: (){
        Get.back();
      },),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.kPadding25,
                    //right: SizeConfig.kPadding25,
                    top: SizeConfig.kPadding8),
                child: Container(
                  width: kIsWeb ? 310 : width,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Text(
                        EnString.notification,
                        style: TextStyleConfig.titleText,
                      ),
                      const Spacer(),
                      Obx(
                        () => Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                              thumbColor:_switchController.on.value ?  AppColors.lightBlueColor : AppColors.whiteColor,
                              activeColor:
                                  AppColors.lightBlueColor.withOpacity(0.3),
                              onChanged: (val) => _switchController.toggle(),
                              value: _switchController.on.value),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 80),
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.kPadding25,
                    right: SizeConfig.kPadding25,
                    top: SizeConfig.kPadding8),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.language);
                  },
                  child: Container(
                    width: kIsWeb ? 300 : width,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Text(
                          EnString.languageSetting,
                          style: TextStyleConfig.titleText,
                        ),
                        const Spacer(),
                        Text(
                          EnString.en,
                          style: TextStyle(
                            color: AppColors.lightBlueColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: poppinsMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height / 80),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.contactus);
                },
                child: _category(EnString.contactus),
              ),
              SizedBox(height: height / 80),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.help);
                },
                child: _category(EnString.help),
              ),
              SizedBox(height: height / 80),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.termsandconditions);
                },
                child: _category(EnString.terms),
              ),
              SizedBox(height: height / 80),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.privacypolicy);
                },
                child: _category(EnString.privacy),
              ),
              SizedBox(height: height / 2.6),
              Center(
                  child: Text(
                "Version 1.1",
                style: TextStyle(
                  color: AppColors.indicatorGreyColor,
                  decoration: TextDecoration.underline,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _category(String categoryname) {
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.kPadding25,
          right: SizeConfig.kPadding25,
          top: SizeConfig.kPadding19),
      child: Container(
        width: kIsWeb ? 300 : width,
        color: Colors.transparent,
        child: Row(
          children: [
            Text(
              categoryname,
              style: TextStyleConfig.titleText,
            ),
          ],
        ),
      ),
    );
  }
}
