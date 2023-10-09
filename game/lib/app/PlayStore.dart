import 'package:flutter/material.dart';

void main() {
  runApp(PlayStore());
}

class PlayStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play Store'),
        ),
        body: HomeScreen(),
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
              prefixIcon: Icon(Icons.search), // Icon pencarian
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildFeaturedApps(),
              _buildTopCharts(),
              _buildCategories(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedApps() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Baru & Terupdate',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // Tambahkan daftar aplikasi unggulan di sini (gunakan Row)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildAppCard('Nama Game 1', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 2', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 3', 'assets/img/01.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTopCharts() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pendidikan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // Tambahkan daftar aplikasi terpopuler di sini (gunakan Row)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildAppCard('Nama Game 4', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 5', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 6', 'assets/img/01.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hiburan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // Tambahkan daftar kategori aplikasi di sini (gunakan Row)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildAppCard('Nama Game 7', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 8', 'assets/img/01.jpg'),
              _buildAppCard('Nama Game 9', 'assets/img/01.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAppCard(String appName, String imagePath) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            appName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
