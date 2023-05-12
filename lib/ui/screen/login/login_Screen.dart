import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../const/dispose_keyboard.dart';
import '../../../widget/back_button.dart';
import '../../../widget/common_text_field.dart';
import '../dashboad/dashboad_screen.dart';
import '../dashboad/dashboad.dart';
import '../forgot/forgot_screen.dart';
import '../signup/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool done = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          "Content de te revoir!",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Connectez-vous pour explorer continue",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Image.asset(AppAssets.nameImage, height: 40),
                        SizedBox(height: 20),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.email,
                          textEditingController: emailController,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.enterPassword,
                          textEditingController: passwordController,
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                done = !done;
                                setState(() {});
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: AppColor.kAppColor,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.done,
                                  color: done == true
                                      ? Colors.white
                                      : Colors.transparent,
                                  size: 15,
                                )),
                              ),
                            ),
                            // Icon(
                            //   Icons.check_box_rounded,
                            //
                            //   size: 23,
                            // ),
                            SizedBox(width: 5),
                            Text(
                              "Souviens-toi de moi",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(ForgotScreen.routeName);
                              },
                              child: Text(
                                "Mot de passe oublié!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 60),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(DashboadScreen2.routeName);
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
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(SignUpScreen.routeName);
                  },
                  child: Text("Vous n'avez pas de compte ? Inscrivez-vous ici",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white)),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
