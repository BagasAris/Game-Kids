import 'package:flutter/material.dart';
import 'package:game/app/models/GameScreen.dart';


void main() {
  runApp(PlayStore());
}

class PlayStore extends StatelessWidget {
  int _selectedIndex = 0;

void _onItemTapped(int index, BuildContext context) {
  if (index == 1) { // Indeks 1 adalah item "Game"
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => GameScreen()), // Ganti GamePage dengan halaman yang sesuai
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Game Store for Kids'),
          backgroundColor: Color.fromRGBO(26, 245, 44, 1),
        ),
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              label: 'Game',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(26, 245, 44, 1),
          onTap: (index) => _onItemTapped(index, context), // Panggil _onItemTapped dengan BuildContext
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Cari Game',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildCategoryCard('Edukasi'),
              _buildCategoryCard('Balapan'),
              _buildCategoryCard('Puzzle'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryCard(String categoryName) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Text(
            categoryName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // Tambahkan konten edukasi, balapan, atau puzzle di sini
          // Ini bisa berupa teks deskripsi atau informasi lainnya
        ],
      ),
    );
  }
}





