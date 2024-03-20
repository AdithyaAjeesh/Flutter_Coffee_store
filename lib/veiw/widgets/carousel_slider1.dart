// ignore_for_file: unused_local_variable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    final List<String> carouselImage = [
      'assets/LaMarzoccoBambiSept2021.webp',
      'assets/cxffeeblack_gold_brew_goldbrew_sprudge_2023.webp',
      'assets/coffeefest-new-york-pour-heart-sprudge-jpg.webp',
      'assets/Partners_December2022.webp',
    ];
    return CarouselSlider.builder(
      itemCount: carouselImage.length,
      itemBuilder: (BuildContext, index, realIndex) {
        final String imagePath = carouselImage[index];
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage(imagePath),
          ),
        );
      },
      options: CarouselOptions(
        height: 400,
        autoPlay: true,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }
}
