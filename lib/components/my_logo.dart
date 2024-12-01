import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'lib/images/my-logo-shopee-pay.png',
          width: 30,
          height: 30,
        ),
        const SizedBox(width: 10),
        const Text(
          'ShopeePay',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
