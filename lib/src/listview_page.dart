

import 'package:flutter/material.dart';
import 'package:flutter_practica_16/src/animated_page.dart';
import 'package:flutter_practica_16/src/tween_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Práctica 16 - Animaciones'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Animated'),
            trailing: const Icon(Icons.arrow_right_rounded),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => const AnimatedPage()));
            },
          ),
          ListTile(
            title: const Text('Tween'),
            trailing: const Icon(Icons.arrow_right_rounded),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => const TweenPage()));
            },
          )
        ],
      ),
    );
  }
}