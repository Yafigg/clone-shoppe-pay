import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/components/my_button_login.dart';
import 'package:flutter_shopee_pay/components/my_logo_login.dart';
import 'package:flutter_shopee_pay/pages/home_page.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorsApp.colorSecondary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(Icons.question_mark_outlined),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MyLogoLogin(),
          const SizedBox(height: 80),
          MyButtonLogin(
            colorButton: ColorsApp.colorsPrimary,
            colorText: Colors.white,
            textButton: "Log In dengan Shopee",
            imageButton: 'lib/images/my-bag-login.png',
            onTap: login,
          ),
          const SizedBox(height: 30),
          const Text(
            'Atau',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 30),
          MyButtonLogin(
            colorButton: Colors.transparent,
            colorText: ColorsApp.colorsPrimary,
            textButton: "Log In dengan Nomor",
            imageButton: 'lib/images/my-smartphone-login.png',
            onTap: login,
          ),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sudah punya akun? ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
