import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), // Ganti dengan path gambar latar belakang Anda
              fit: BoxFit.cover, // Sesuaikan dengan kebutuhan, misalnya BoxFit.fill untuk mengisi seluruh area
            ),
          ),
          child: YourWidget(), // Ganti YourWidget() dengan widget yang ingin ditampilkan di atas latar belakang
        ),
      ),
    );
  }
}

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget yang ingin ditampilkan di atas latar belakang
    return Center(
      child: Text(
        'Hello, World!',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
