import 'package:flutter/material.dart';
import 'package:french_breezy_app/ui/screen/profile_tab/recommenaed_details_screen.dart';
import 'package:french_breezy_app/ui/screen/profile_tab/widget/bottom_sheet.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';
import 'details_screen.dart';
import 'edit/edit_cart_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profileScreen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        sortBottomSheet();
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColor.kAppColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 145,
                      decoration: BoxDecoration(
                        color: AppColor.kAppColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ajouter une carte",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Icon(Icons.add, size: 18, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(DetailsScreen.routeName);
                          },
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset("assets/icon/card7.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(EditCartScreen.routeName);
                                },
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: AppColor.kAppColor,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Center(
                                      child: Text(
                                    "Modifier la carte",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColor.kAppColor,
                                    borderRadius: BorderRadius.circular(40)),
                                child: Center(
                                    child: Text(
                                  "Aperçu de la carte",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(
                          "RECOMMANDÉE",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(height: 30),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(RecommenaedDetails.routeName);
                                },
                                child: Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          blurRadius: 4),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade100,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              AppAssets.emailBox,
                                              height: 30,
                                            ),
                                          )),
                                      SizedBox(height: 10),
                                      Text(
                                        "E-mail",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(RecommenaedDetails.routeName);
                                },
                                child: Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          blurRadius: 4),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: Colors.amber.shade100,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              AppAssets.linkdinBox,
                                              height: 40,
                                            ),
                                          )),
                                      SizedBox(height: 10),
                                      Text(
                                        "Linkedin",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(RecommenaedDetails.routeName);
                                },
                                child: Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.4),
                                          blurRadius: 4),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.green.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              AppAssets.whatApp,
                                              height: 40,
                                            ),
                                          )),
                                      SizedBox(height: 10),
                                      Text(
                                        "Whatsapp",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColor.kAppColor,
                              AppColor.kAppColor.withOpacity(0.2)
                            ]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Column(
                              children: [
                                Icon(Icons.add, color: Colors.white, size: 50),
                                SizedBox(height: 15),
                                Text(
                                  "Ajouter des informations à la carte",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Ajouter des informations de contact, un lien et plus encore à votre carte",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
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
