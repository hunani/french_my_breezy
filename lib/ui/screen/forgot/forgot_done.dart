import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../login/login_Screen.dart';

class ForgotDode extends StatelessWidget {
  static const String routeName = '/forgotDode';
  const ForgotDode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kAppColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        "Mise à jour du mot de passe",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Connectez-vous pour explorer continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black38),
                      ),
                      SizedBox(height: 40),
                      Image.asset(AppAssets.doneImage, height: 140),
                      SizedBox(height: 40),
                      Text(
                        "Votre compte a été créé avec succès",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black38),
                      ),
                      SizedBox(height: 70),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(LoginScreen.routeName);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColor.kAppColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text("S'identifier",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
