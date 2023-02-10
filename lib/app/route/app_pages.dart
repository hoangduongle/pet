// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:get/get.dart';
import 'package:pets/app/modules/adopt/view/adopt_view.dart';
import 'package:pets/app/modules/petadopt/view/petadopt_view.dart';
import 'package:pets/app/modules/petowner/view/petowner_view.dart';
import 'package:pets/app/modules/register/view/register_view.dart';
import 'package:pets/app/modules/wellcome/view/wellcome_view.dart';
import 'package:pets/app/route/app_routes.dart';

import '../modules/login/view/login_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: '/',
      page: () => WellcomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/wellcome',
      page: () => WellcomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/adopt',
      page: () => AdoptScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/petadopt',
      page: () => PetAdoptScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: '/petowner',
      page: () => PetOwnerScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
