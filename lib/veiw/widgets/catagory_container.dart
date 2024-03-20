import 'package:flutter/material.dart';

class CatagoryContainer extends StatelessWidget {
  const CatagoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductContainerLarge(
            titleText: 'Cappuchino',
            text: 'best coffee',
            image: 'assets/pngwing.com (2).png',
          ),
          ProductContainerLarge(
            titleText: 'Latte',
            text: 'best coffee',
            image: 'assets/pngwing.com (1).png',
          ),
          ProductContainerLarge(
            titleText: 'Black Coffee',
            text: 'best coffee',
            image: 'assets/pngwing.com (3).png',
          ),
          ProductContainerLarge(
            titleText: 'Expresso',
            text: 'best coffee',
            image: 'assets/pngwing.com (4).png',
          ),
          ProductContainerLarge(
            titleText: 'Indian Coffee',
            text: 'best coffee',
            image: 'assets/pngwing.com (5).png',
          ),
        ],
      ),
    );
  }
}

class ProductContainerSmall extends StatelessWidget {
  final String titleText;
  final String text;
  final Image image;
  const ProductContainerSmall({
    super.key,
    required this.titleText,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductContainerLarge extends StatelessWidget {
  final String titleText;
  final String text;
  final String image;
  const ProductContainerLarge(
      {super.key,
      required this.titleText,
      required this.text,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      padding: const EdgeInsets.all(10),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 29, 29, 29),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 77, 74, 74).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: Image.asset(image),
          ),
          Text(
            titleText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
