import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/bindings/initia_bindings.dart';
import 'package:pets/app/route/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String initialRoute = AppPages.INITIAL;
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Petini",
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          initialBinding: InitiaBinding(),
          getPages: AppPages.routes,
        );
      },
    );
  }
}
