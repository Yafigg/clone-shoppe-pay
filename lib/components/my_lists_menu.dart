import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/components/my_items_menu.dart';

class MyListsMenu extends StatelessWidget {
  const MyListsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 200,
      margin: const EdgeInsets.only(top: 110),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(10, 10),
            blurRadius: 9,
          ),
        ],
        color: Colors.white,
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 3 / 3,
        ),
        children: [
          // Item Menu 1st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-wallet-cashback.png',
                textMenu: 'Cashback',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 2st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-pulsa-dan-tagihan.png',
                textMenu: 'Pulsa & Lain',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 3st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-promo-paylatter.png',
                textMenu: 'SPayLatter',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 4st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-asuransi.png',
                textMenu: 'Asuransi',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 5st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-paket-data.png',
                textMenu: 'Paket Data',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 6st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-google-play.png',
                textMenu: 'Google Play',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 7st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-pln.png',
                textMenu: 'Listrik PLN',
                onTap: () {},
              ),
            ],
          ),

          // Item Menu 8st
          Column(
            children: [
              MyItemsMenu(
                image: 'lib/images/my-menu-lainnya.png',
                textMenu: 'Lihat Semua',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
