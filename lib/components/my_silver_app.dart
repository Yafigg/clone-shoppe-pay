import 'package:flutter/material.dart';

class MySilverApp extends StatelessWidget {
  const MySilverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(
        left: 10,
        top: 4,
        bottom: 4,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(75, 158, 158, 158),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Image.asset(
            'lib/images/my-coin-shopee-pay.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10),
          const Text(
            '5',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_right,
            size: 35,
            color: Color.fromARGB(137, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
