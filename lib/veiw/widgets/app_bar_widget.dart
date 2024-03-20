// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

PreferredSize AppBarWidget(BuildContext context) {
  return const PreferredSize(
    preferredSize: Size.fromHeight(90),
    child: DefaultTabController(
      length: 10,
      child: AppBars(),
    ),
  );
}

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.orange),
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Coffee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            Container(
              height: 45,
              width: 100,
              margin: const EdgeInsets.only(left: 5),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: const Text(
                'Store',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
