import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import 'activate_a_my_beezy_screen.dart';
import 'edit_account_email.dart';
import 'edit_profile_link.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settingsScreen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55,
              width: double.infinity,
              color: AppColor.kAppColor,
              child: Center(
                child: Text("Paramètre",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    )),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E2EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: AppColor.kAppColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: Image.asset(AppAssets.dashboad1Image,
                                      height: 30)),
                            ),
                            SizedBox(width: 15),
                            Text("Mes idées",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                )),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,
                                color: AppColor.kAppColor),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E2EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(ActivateAMyBeezyScreen.routeName);
                              },
                              child: tital("Activer un appareil my beezy")),
                          SizedBox(height: 5),
                          Divider(thickness: 2, color: Colors.white),
                          SizedBox(height: 5),
                          tital("Go Pro"),
                          SizedBox(height: 5),
                          Divider(thickness: 2, color: Colors.white),
                          SizedBox(height: 5),
                          tital("Mes équipes beezy ( essai gratuit )"),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E2EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text("Complète ton profil",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: AppColor.kText,
                                )),
                            SizedBox(height: 5),
                            Image.asset(AppAssets.linImage),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text("40 % terminé",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: AppColor.kText,
                                    )),
                                Spacer(),
                                Text("3/7 tâches accomplies",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: AppColor.kText,
                                    )),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E2EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(EditAccountEmailScreen.routeName);
                              },
                              child: tital("Modifier l'e-mail du compte")),
                          SizedBox(height: 5),
                          Divider(thickness: 2, color: Colors.white),
                          SizedBox(height: 5),
                          GestureDetector(
                              onTap: () {
                                Get.toNamed(EditProfileLink.routeName);
                              },
                              child: tital("Modifier le lien du profil")),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.kAppColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text("Se déconnecter",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21,
                                  color: Colors.white,
                                )),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 18),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 130),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tital(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColor.kText,
              )),
          Spacer(),
          Icon(Icons.arrow_forward_ios, color: AppColor.kAppColor, size: 18),
        ],
      ),
    );
  }
}
