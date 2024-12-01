import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class MySaldoAndCredit extends StatelessWidget {
  final Function()? onTap;

  const MySaldoAndCredit({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        color: ColorsApp.colorsPrimary,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ShopeePay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Rp300.000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            padding: const EdgeInsets.only(left: 20),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.white30),
              ),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Row(
                    children: [
                      const Text(
                        'SPayLatter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                        ),
                        child: const Center(
                          child: Text(
                            'Perbarui Kredit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rp1.800.000',
                      style: TextStyle(color: Colors.white60, fontSize: 16),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
