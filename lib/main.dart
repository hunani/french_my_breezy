import 'package:flutter/material.dart';
import 'package:french_breezy_app/route/route_generator.dart';
import 'package:french_breezy_app/ui/screen/dashboad/dashboad.dart';
import 'package:french_breezy_app/ui/screen/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'const/app_bindings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "SourceSansPro",
      ),
      initialBinding: AppBindings(),
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
