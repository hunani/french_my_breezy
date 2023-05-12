import 'package:flutter/material.dart';

import '../const/app_color.dart';
import '../const/app_icon.dart';

enum TextFieldType {
  userName,
  password,
  confirmPassword,
  email,
  enterPassword,
  date,
  gander,
  address,
  name,
  job,
  companyName,
  address2,
  bio,
  email2,
  number,
  website,
  location,
  from,
  to,
  subject,
  mail,
  yourMessage,
  phoneNumber,
}

class CustomTextField extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController textEditingController;
  final Widget? clearTextWidget;
  final String? Function(String?)? validator;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    this.validator,
    required this.textEditingController,
    required this.textFieldType,
    this.clearTextWidget,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: textInputAction,
      maxLines: maxLines,
      keyboardType: textInputType,
      obscureText: obscureText,
      controller: textEditingController,
      validator:
          validator ?? (val) => val!.trim().isEmpty ? "field required" : null,
      decoration: InputDecoration(
        focusedBorder: focusedBorder,
        enabledBorder: border,
        fillColor: fillColor,
        filled: true,
        contentPadding: const EdgeInsets.all(17),
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
        hintText: hintText,
      ),
    );
  }

  Color? get fillColor {
    switch (textFieldType) {
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return Colors.black12;
      case TextFieldType.name:
      case TextFieldType.email2:
      case TextFieldType.number:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.website:
      case TextFieldType.location:
        return Color(0xffE0E2EF);
    }
    return Color(0xffF8F7FB);
  }

  int? get maxLines {
    switch (textFieldType) {
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
        return 5;
    }
    return null;
  }

  TextInputType? get textInputType {
    switch (textFieldType) {
      case TextFieldType.date:
      case TextFieldType.phoneNumber:
      case TextFieldType.number:
        return TextInputType.number;
    }
    return null;
  }

  TextInputAction? get textInputAction {
    switch (textFieldType) {
      case TextFieldType.userName:
      case TextFieldType.password:
      case TextFieldType.confirmPassword:
      case TextFieldType.email:
      case TextFieldType.enterPassword:
      case TextFieldType.gander:
      case TextFieldType.date:
      case TextFieldType.address:
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return TextInputAction.next;
      default:
        return null;
    }
  }

  Widget? get prefix {
    switch (textFieldType) {
      case TextFieldType.userName:
        return Icon(
          Icons.account_circle,
          color: AppColor.kAppColor,
          size: 20,
        );
      case TextFieldType.password:
      case TextFieldType.confirmPassword:
      case TextFieldType.enterPassword:
        return const Icon(
          Icons.lock_outline,
          color: Colors.black45,
          size: 19,
        );
      case TextFieldType.email:
        return const Icon(
          Icons.email_outlined,
          color: Colors.black45,
          size: 19,
        );
      default:
        return null;
    }
  }

  Widget? get suffixIcon {
    switch (textFieldType) {
      case TextFieldType.userName:
      case TextFieldType.email:
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColor.kAppColor),
            child: Icon(Icons.done, color: Colors.white, size: 12),
          ),
        );
      case TextFieldType.gander:
        return Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(AppAssets.aro, height: 10),
        );
      default:
        return null;
    }
  }

  InputBorder get border {
    switch (textFieldType) {
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.from:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
      default:
        return OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none);
    }
  }

  InputBorder get focusedBorder {
    switch (textFieldType) {
      case TextFieldType.name:
      case TextFieldType.job:
      case TextFieldType.companyName:
      case TextFieldType.address2:
      case TextFieldType.bio:
      case TextFieldType.number:
      case TextFieldType.email2:
      case TextFieldType.location:
      case TextFieldType.website:
      case TextFieldType.from:
      case TextFieldType.to:
      case TextFieldType.subject:
      case TextFieldType.mail:
      case TextFieldType.yourMessage:
      case TextFieldType.phoneNumber:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
      default:
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColor.kAppColor),
        );
    }
  }

  String? get hintText {
    switch (textFieldType) {
      case TextFieldType.userName:
        return "Nom d'utilisateur";
      case TextFieldType.password:
        return "Tapez votre mot de passe";
      case TextFieldType.confirmPassword:
        return "Confirmez le mot de passe";
      case TextFieldType.email:
        return "E-mail";
      case TextFieldType.enterPassword:
        return "E-mail";
      case TextFieldType.date:
        return "Date de naissance";
      case TextFieldType.gander:
        return "Jars";
      case TextFieldType.address:
        return "À propos";
      case TextFieldType.name:
        return "Name";
      case TextFieldType.job:
        return "Nom";
      case TextFieldType.companyName:
        return "Company Name";
      case TextFieldType.address2:
        return "Nom de l'entreprise";
      case TextFieldType.bio:
        return "Bio";
      case TextFieldType.from:
        return "Depuis";
      case TextFieldType.to:
        return "Pour";
      case TextFieldType.subject:
        return "Sujette";
      case TextFieldType.mail:
        return "Poster";
      case TextFieldType.yourMessage:
        return "Numéro de téléphone";
      case TextFieldType.phoneNumber:
        return "Votre message";
      case TextFieldType.number:
        return "Nombre";
      case TextFieldType.email2:
        return "E-mail";
      case TextFieldType.location:
        return "Emplacement";
      case TextFieldType.website:
        return "Site Internet";
      default:
        return null;
    }
  }
}
