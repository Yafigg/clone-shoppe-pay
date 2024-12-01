import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class MySpinjam extends StatelessWidget {
  const MySpinjam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 160,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 8,
            color: Color.fromARGB(144, 0, 0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'lib/images/my-logo-pinjaman.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 10),
              const Text(
                'SPinjam',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limit s/d',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Rp50.000.000',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsApp.colorsPrimary),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Sedang Ditinjau',
                  style: TextStyle(color: ColorsApp.colorsPrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
