import 'package:flutter/material.dart';

import '../../config/colors/colors.dart';
import '../../config/images/images.dart';
import '../../config/mediaquery/mediaquery.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconImage;
  final Function()? onPressed;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;

  const CustomAppBar(
      {Key? key,
      this.title,
      this.backgroundColor,
      this.textColor,
      this.iconImage,
     required this.onPressed, this.action,this.bottom})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? AppColors.appBgColor,
      elevation: 0,
      bottom: bottom,
      leading: GestureDetector(
          onTap: () {
            onPressed!();
          },
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(height / 45),
              child: Image.asset(
                iconImage ?? IconImage.backarrow,
                color: textColor ?? AppColors.blackColor,
                scale: 4,
              ),
            ),
          )),
      centerTitle: true,
      title: Text(
        title??'',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: textColor ?? AppColors.blackColor,
            fontSize: height / 40,
            fontWeight: FontWeight.w600,
            ),
      ),
      actions:action?? [],
    );
  }
}
