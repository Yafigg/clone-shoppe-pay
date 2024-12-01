import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselPromo extends StatelessWidget {
  final List<String> imagePath = [
    'lib/images/image-1.png',
    'lib/images/image-2.png',
    'lib/images/image-3.png',
    'lib/images/image-4.png',
  ];

  MyCarouselPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 8,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 400),
          viewportFraction: 0.8,
        ),
        items: imagePath
            .map(
              (item) => Image.asset(
                item,
                width: MediaQuery.of(context).size.width - 20,
              ),
            )
            .toList(),
      ),
    );
  }
}
