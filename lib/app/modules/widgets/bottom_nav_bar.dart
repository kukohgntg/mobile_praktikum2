// import 'package:berita_bola_app/screens/discover_screen.dart';
// import 'package:berita_bola_app/screens/home_screen.dart';
import 'package:berita_bola_app_bismilah/app/modules/discover/views/discover_view.dart';
import 'package:berita_bola_app_bismilah/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/views/home_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(left: 50),
            child: IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, HomeScreen.routeName);
                // navigator!.push(
                //   MaterialPageRoute(
                //     builder: (_) => const HomeView(),
                //   ),
                // );
                Get.to(() => const HomeView());
              },
              icon: const Icon(Icons.home),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, DiscoverScreen.routeName);
              // navigator!.push(
              //   MaterialPageRoute(
              //     builder: (_) => const DiscoverView(),
              //   ),
              // );
              Get.to(() => const DiscoverView());
            },
            icon: const Icon(Icons.search),
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {
                // print('no profile');
                // navigator!.push(
                //   MaterialPageRoute(
                //     builder: (_) => ProfileView(),
                //   ),
                // );
                Get.to(() => ProfileView());
              },
              icon: const Icon(Icons.person),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
