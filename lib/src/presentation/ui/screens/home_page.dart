//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../provider/navigation_notifier.dart';
import 'nav_accont.dart';
import 'nav_gallery.dart';
import 'nav_home.dart';
//  //   ///

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page - Navigation Bar'),
      ),
      // body: const Center(child: Text('Navigation Bar'),),
      body: [const NavHome(), const NavAccont(), const NavGallery()][index],
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          NavigationDestination(
              selectedIcon: Icon(Icons.browse_gallery),
              icon: Icon(Icons.browse_gallery_outlined),
              label: 'Gallery'),
          NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: 'Account'),
        ],
        selectedIndex: index,
        indicatorColor: Colors.indigoAccent.shade200,
        onDestinationSelected: (value) {
          ref.read(navigationNotifierProvider.notifier).setSelectedIndex(value);
        },
      ),
    );
  }
}
