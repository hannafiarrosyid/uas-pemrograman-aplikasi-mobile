import 'package:flutter/material.dart';
import 'package:uas_aplikasi_mobile_c2/screens/description_screen.dart';

import '../screens/profile_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(children: 
      [
        const DrawerHeader(
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Text('Kalkulator BMI'),
      ),
      ListTile(
        leading: const Icon(Icons.person_2_outlined),
        title:const Text(
          'profil',
          style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          ),
          ),
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
                ),
                );
          },
      ),
      ListTile(

            leading: const Icon(Icons.description_outlined),
            title: const Text(
              'Deskripsi',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DescriptionScreen(),
                ),
              );
            },
          )
    ],
    ),
    );
  }
}