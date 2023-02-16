// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/binding/adopt_binding.dart';
import 'package:pets/app/modules/adopt/view/adopt_view.dart';
import 'package:pets/app/modules/cart/binding/cart_binding.dart';
import 'package:pets/app/modules/cart/view/cart_view.dart';
import 'package:pets/app/modules/itemDetail/binding/itemDetail_binding.dart';
import 'package:pets/app/modules/itemDetail/view/itemDetail_view.dart';
import 'package:pets/app/modules/login/binding/login_binding.dart';
import 'package:pets/app/modules/main/binding/main_binding.dart';
import 'package:pets/app/modules/main/view/main_view.dart';
import 'package:pets/app/modules/order/binding/order_binding.dart';
import 'package:pets/app/modules/order/view/order_view.dart';
import 'package:pets/app/modules/petadopt/binding/petadopt_binding.dart';
import 'package:pets/app/modules/petadopt/view/petadopt_view.dart';
import 'package:pets/app/modules/petadoptDetail/binding/petadoptDetail_binding.dart';
import 'package:pets/app/modules/petadoptDetail/view/petadoptDetail_view.dart';
import 'package:pets/app/modules/petinfo/binding/petinfo_binding.dart';
import 'package:pets/app/modules/petinfo/view/petinfo_view.dart';
import 'package:pets/app/modules/petowner/binding/petowner_binding.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';
import 'package:pets/app/modules/register/binding/register_binding.dart';
import 'package:pets/app/modules/register/view/register_view.dart';
import 'package:pets/app/modules/searchService/binding/searchService_binding.dart';
import 'package:pets/app/modules/searchService/view/searchService_view.dart';
import 'package:pets/app/modules/serivce/binding/service_binding.dart';
import 'package:pets/app/modules/serivce/view/service_view.dart';
import 'package:pets/app/modules/serviceDetail/binding/serviceDetail_binding.dart';
import 'package:pets/app/modules/serviceDetail/view/serviceDetail_view.dart';
import 'package:pets/app/modules/shopping/binding/shopping_binding.dart';
import 'package:pets/app/modules/shopping/view/shopping_view.dart';
import 'package:pets/app/modules/wellcome/binding/wellcome_binding.dart';
import 'package:pets/app/route/app_routes.dart';
import '../modules/wellcome/view/wellcome_view.dart';

import '../modules/login/view/login_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: '/',
      page: () => WellcomeScreen(),
      binding: WellcomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/wellcome',
      page: () => WellcomeScreen(),
      binding: WellcomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/main',
      page: () => MainScreen(),
      binding: MainBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/adopt',
      page: () => AdoptScreen(),
      binding: AdoptBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/petadopt',
      page: () => PetAdoptScreen(),
      binding: PetAdoptBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/petinfo',
      page: () => PetInfoScreen(),
      binding: PetInfoBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/petadoptdetail',
      page: () => PetAdoptDetailScreen(),
      binding: PetAdoptDetailBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/petowner',
      page: () => PetOwnerScreen(),
      binding: PetOwnerBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/service',
      page: () => ServiceScreen(),
      binding: ServiceBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/searchservice',
      page: () => SearchServiceScreen(),
      binding: SearchServiceBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/servicedetail',
      page: () => ServiceDetailScreen(),
      binding: ServiceDetailBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/itemdetail',
      page: () => ItemDetailScreen(),
      binding: ItemDetailBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/cart',
      page: () => CartScreen(),
      binding: CartBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/order',
      page: () => OrderScreen(),
      binding: OrderBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: '/shopping',
      page: () => ShoppingScreen(),
      binding: ShoppingBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
