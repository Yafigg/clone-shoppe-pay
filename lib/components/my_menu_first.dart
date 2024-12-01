// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class MyMenuShopeePayPrimary extends StatelessWidget {
  const MyMenuShopeePayPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: MediaQuery.of(context).size.width - 20,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/my-top-up-saldo.png',
                    width: 36,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Isi Saldo',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/my-code-pay.png',
                    width: 36,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Kode Bayar',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/my-transfer.png',
                    width: 36,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Transfer',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    'lib/images/my-transfer-bank.png',
                    width: 36,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Transfer Bank',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
