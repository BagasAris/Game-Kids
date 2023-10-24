import 'package:flutter/material.dart';
import 'package:game/app/PlayStore.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PlayStore(),
    );
  }
}

