import 'package:flutter/material.dart';
import 'package:game/app/PlayStore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayStore(),
    );
  }
}