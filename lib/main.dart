import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'config/approutes/approutes.dart';
import 'view/authentication/createaccount.dart';
import 'view/authentication/forgot_password.dart';
import 'view/authentication/login.dart';
import 'view/authentication/otpscreen.dart';
import 'view/bottombar.dart';
import 'view/onbonding/onbonding.dart';
import 'view/pages/homecategories/fashion_category.dart';
import 'view/pages/homecategories/mansjeans.dart';
import 'view/pages/homecategories/notification.dart';
import 'view/pages/homecategories/notificationnotfound.dart';
import 'view/pages/homecategories/productdetails.dart';
import 'view/pages/homecategories/ratingreviews.dart';
import 'view/pages/homescreen.dart';
import 'view/pages/mycartscreen/applycoupon.dart';
import 'view/pages/mycartscreen/checkout.dart';
import 'view/pages/mycartscreen/empty_cart.dart';
import 'view/pages/mycartscreen/order_confirm.dart';
import 'view/pages/profile/accountsetting/contactus.dart';
import 'view/pages/profile/accountsetting/help.dart';
import 'view/pages/profile/accountsetting/language.dart';
import 'view/pages/profile/accountsetting/privacypolicy.dart';
import 'view/pages/profile/accountsetting/setting.dart';
import 'view/pages/profile/accountsetting/termsandconditions.dart';
import 'view/pages/profile/myaccount/changepassword.dart';
import 'view/pages/profile/myaccount/edit_profile.dart';
import 'view/pages/profile/myaccount/myaccount.dart';
import 'view/pages/profile/myaddress/addnewaddress.dart';
import 'view/pages/profile/myaddress/deliveryaddress.dart';
import 'view/pages/profile/myorder/emptyorder.dart';
import 'view/pages/profile/myorder/myorders.dart';
import 'view/pages/profile/myorder/trackorder.dart';
import 'view/pages/profile/mywishlist/addtowishlist.dart';
import 'view/pages/profile/mywishlist/mywishlist.dart';
import 'view/pages/profile/paymentmethod/addcard.dart';
import 'view/pages/profile/paymentmethod/enterpin.dart';
import 'view/pages/profile/paymentmethod/paymentmethod.dart';
import 'view/pages/profile/profile.dart';
import 'view/splashscreen/splashscreen.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: "Shopfuge",
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          getPages: [
            GetPage(name: AppRoute.loginscreen, page: () => LoginScreen()),
            GetPage(name: AppRoute.createaccount, page: () => CreateAccount()),
            GetPage(name: AppRoute.otpscreen, page: () => const OtpScreen()),
            GetPage(
                name: AppRoute.forgotpassword, page: () => ForgotPassword()),
            GetPage(name: AppRoute.onbondingscreen, page: () => OnBonding()),
            GetPage(name: AppRoute.homescreen, page: () => HomeScreen()),
            GetPage(name: AppRoute.bottomBar, page: () => BottomBar()),
            GetPage(name: AppRoute.checkout, page: () => Checkout()),
            GetPage(
                name: AppRoute.applycoupon, page: () => const ApplyCoupon()),
            GetPage(
                name: AppRoute.fashioncategory, page: () => FashionCategory()),
            GetPage(name: AppRoute.mansjeans, page: () => MensJeans()),
            GetPage(name: AppRoute.emptycart, page: () => const EmptyCart()),
            GetPage(
                name: AppRoute.orderconfirm, page: () => const OrderConfirm()),
            GetPage(name: AppRoute.profile, page: () => const Profile()),
            GetPage(name: AppRoute.myaccount, page: () => const MyAccount()),
            GetPage(
                name: AppRoute.changepassword, page: () => ChangePassword()),
            GetPage(
                name: AppRoute.productdetails, page: () => ProductDetails()),
            GetPage(name: AppRoute.ratingreviews, page: () => RatingReviews()),
            GetPage(
                name: AppRoute.editprofile, page: () =>  const EditProfile()),
            GetPage(
                name: AppRoute.notificationnotfound,
                page: () => const NotificationNotFound()),
            GetPage(
                name: AppRoute.notificationscreen,
                page: () => ShowNotificationScreen()),
            GetPage(name: AppRoute.myorders, page: () => const MyOrders()),
            GetPage(name: AppRoute.emptyorder, page: () => const EmptyOrder()),
            GetPage(name: AppRoute.trackorder, page: () => TrackOrder()),
            GetPage(
                name: AppRoute.addtowishlist,
                page: () => const AddToWishList()),
            GetPage(name: AppRoute.mywishlist, page: () => const MyWishList()),
            GetPage(name: AppRoute.settings, page: () => Settings()),
            GetPage(
                name: AppRoute.deliveryaddress,
                page: () => const DeliveryAddress()),
            GetPage(name: AppRoute.contactus, page: () => const ContactUs()),
            GetPage(name: AppRoute.help, page: () => const Help()),
            GetPage(
                name: AppRoute.termsandconditions,
                page: () => const TermAndConditions()),
            GetPage(
                name: AppRoute.privacypolicy,
                page: () => const PrivacyPolicy()),
            GetPage(name: AppRoute.language, page: () => Language()),
            GetPage(name: AppRoute.paymentmethod, page: () => PaymentMethod()),
            GetPage(name: AppRoute.enterpin, page: () => const EnterPin()),
            GetPage(name: AppRoute.addcard, page: () => AddCard()),
            GetPage(name: AppRoute.addnewaddress, page: () => AddNewAddress()),
          ],
        );
      },
    );
  }
}
