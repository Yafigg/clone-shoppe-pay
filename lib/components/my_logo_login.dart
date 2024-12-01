import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class MyLogoLogin extends StatelessWidget {
  const MyLogoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('lib/images/my-logo-wallet-login.png'),
        const SizedBox(width: 10),
        const Text(
          "ShopeePay",
          style: TextStyle(
            color: ColorsApp.colorsPrimary,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
