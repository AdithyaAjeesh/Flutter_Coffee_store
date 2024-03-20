import 'package:flutter/material.dart';
import 'package:flutter_coffee_store_app/veiw/startup_screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: const Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/f0d328d2f116501a495f7981376a8d3f.webp',
                    ),
                    radius: 45,
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          listTileWidget(
            title: 'Account',
            icons: const Icon(
              Icons.verified_outlined,
            ),
            ontaps: () {
              print('hi');
            },
          ),
          listTileWidget(
            title: 'Setting',
            icons: const Icon(
              Icons.settings,
            ),
            ontaps: () {},
          ),
          listTileWidget(
            title: 'Log Out',
            icons: const Icon(
              Icons.login,
            ),
            ontaps: () async {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.setBool('key', false);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const SplashScreen()));
            },
          ),
        ],
      ),
    );
  }

  listTileWidget({
    required String title,
    required Icon icons,
    required VoidCallback ontaps,
  }) =>
      ListTile(
        leading: icons,
        iconColor: Colors.orange,
        contentPadding: const EdgeInsets.all(10),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        onTap: ontaps,
      );
}
