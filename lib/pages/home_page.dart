// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_shopee_pay/components/my_carousel_promo.dart';

import 'package:flutter_shopee_pay/components/my_lists_menu.dart';
import 'package:flutter_shopee_pay/components/my_logo.dart';
import 'package:flutter_shopee_pay/components/my_menu_first.dart';
import 'package:flutter_shopee_pay/components/my_saldo_and_credit.dart';
import 'package:flutter_shopee_pay/components/my_silver_app.dart';
import 'package:flutter_shopee_pay/components/my_spinjam.dart';
import 'package:flutter_shopee_pay/pages/notifikasi_page.dart';
import 'package:flutter_shopee_pay/pages/profile_page.dart';
import 'package:flutter_shopee_pay/pages/riwayat_page.dart';
import 'package:flutter_shopee_pay/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  final List<Widget> _pageScreen = [
    HomePage(),
    RiwayatPage(),
    NotifikasiPage(),
    ProfilePage(),
  ];

  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: const MyLogo(),
        backgroundColor: ColorsApp.colorsPrimary,
        automaticallyImplyLeading: false,
        actions: [
          const MySilverApp(),
        ],
      ),
      body: WidgetHomePage(),

      // Bottom Navigation Bar
      floatingActionButton: Container(
        width: 65.0,
        height: 65.0,
        child: FloatingActionButton(
          // ignore: sort_child_properties_last
          child: Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
            size: 32.0,
          ),
          onPressed: () {},
          backgroundColor: ColorsApp.colorsPrimary,
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 4,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyNavigationBottom(),
    );
  }

  BottomAppBar MyNavigationBottom() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left Tab
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      _currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: _currentTab == 0
                            ? ColorsApp.colorsPrimary
                            : Colors.grey,
                        size: 35,
                      ),
                      Text(
                        'Beranda',
                        style: TextStyle(
                          color: _currentTab == 0
                              ? ColorsApp.colorsPrimary
                              : Colors.grey,
                          fontWeight: _currentTab == 0
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = RiwayatPage();
                      _currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.history,
                        color: _currentTab == 1
                            ? ColorsApp.colorsPrimary
                            : Colors.grey,
                        size: 35,
                      ),
                      Text(
                        'Riwayat',
                        style: TextStyle(
                          color: _currentTab == 1
                              ? ColorsApp.colorsPrimary
                              : Colors.grey,
                          fontWeight: _currentTab == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Right Tab
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = NotifikasiPage();
                      _currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: _currentTab == 2
                            ? ColorsApp.colorsPrimary
                            : Colors.grey,
                        size: 35,
                      ),
                      Text(
                        'Notifikasi',
                        style: TextStyle(
                          color: _currentTab == 2
                              ? ColorsApp.colorsPrimary
                              : Colors.grey,
                          fontWeight: _currentTab == 2
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = ProfilePage();
                      _currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_3_rounded,
                        color: _currentTab == 3
                            ? ColorsApp.colorsPrimary
                            : Colors.grey,
                        size: 35,
                      ),
                      Text(
                        'Riwayat',
                        style: TextStyle(
                          color: _currentTab == 3
                              ? ColorsApp.colorsPrimary
                              : Colors.grey,
                          fontWeight: _currentTab == 3
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetHomePage extends StatelessWidget {
  const WidgetHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Column(
              children: [
                // ShopeePay and Kredit
                MySaldoAndCredit(onTap: () {}),

                // Another List Menu
                MyListsMenu(),

                // SPinjam Pertinjau
                MySpinjam(),

                // Carousel Promo
                MyCarouselPromo(),
              ],
            ),
            // Menu First Priamary
            Positioned(
              top: 80,
              child: MyMenuShopeePayPrimary(),
            ),
          ],
        ),
      ],
    );
  }
}
