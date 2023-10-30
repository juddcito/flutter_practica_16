

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {

  double _height = 150;
  double _width = 150;
  double _font = 25;

  void _uppdateState() {
    setState(() {
      _height = 300;
      _width = 300;
      _font = 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          curve: Curves.bounceOut,
          width: _width,
          height: _height,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'Hola',
              style: TextStyle(
                fontSize: _font,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _uppdateState();
        },
        child: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}