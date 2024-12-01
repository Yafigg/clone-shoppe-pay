// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class MyButtonLogin extends StatelessWidget {
  Color? colorButton;
  Color? colorText;
  final String textButton;
  final String imageButton;
  final Function()? onTap;

  MyButtonLogin({
    super.key,
    required this.colorButton,
    required this.colorText,
    required this.textButton,
    required this.imageButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorsApp.colorsPrimary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imageButton),
            const SizedBox(width: 50),
            Text(
              textButton,
              style: TextStyle(
                color: colorText,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
