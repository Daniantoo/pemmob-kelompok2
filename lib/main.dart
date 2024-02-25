import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ChizPic',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/logo.png'),
          ),
        ),
        backgroundColor: const Color(0xFFE1BE66),
      ),
    ),
  );
}
