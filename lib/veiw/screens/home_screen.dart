import 'package:flutter/material.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/app_bar_widget.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/carousel_slider1.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/catagory_container.dart';
import 'package:flutter_coffee_store_app/veiw/widgets/drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context),
      drawer: const DrawerWidget(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              padding: const EdgeInsets.all(15),
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 29, 29, 29),
              ),
              child: Text(
                'Get Your Favorite Coffee',
                style: GoogleFonts.bebasNeue(
                  fontSize: 55,
                  color: Colors.orange,
                ),
              ),
            ),
            const CatagoryContainer(),
            const CarouselSliderWidget(),
          ],
        ),
      ),
    );
  }
}
