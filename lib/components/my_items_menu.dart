import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class MyItemsMenu extends StatelessWidget {
  final String image;
  final String textMenu;
  final Function()? onTap;

  const MyItemsMenu({
    super.key,
    required this.image,
    required this.textMenu,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorsApp.colorSecondary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 30,
                height: 30,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              textMenu,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
