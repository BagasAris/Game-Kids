import 'package:flutter/material.dart';
import 'package:game/app/PlayStore.dart';
import 'package:game/app/models/GameListScreen.dart';
export 'GameListScreen.dart';

class GameScreen extends StatelessWidget {
  // Implementasikan tampilan halaman Game di sini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Page'),
          backgroundColor: Color.fromRGBO(26, 245, 44, 1),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            GameListScreen(), // Menambahkan GameListScreen ke dalam GameScreen
          ],
        ),
      ),
    );
  }
}