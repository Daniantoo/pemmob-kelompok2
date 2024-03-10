import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kartu Nama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kartu Nama Kelompok 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KartuNama(
              nama: 'Dara Lembayung Kinasih',
              nim: '22091397050',
              email: 'dara.22050@mhs.unesa.ac.id',
              jurusan: 'D4 Manajemen Informatika',
              foto: 'images/ktm dara.jpg',
            ),
            KartuNama(
              nama: 'Putri Rizki Alifia',
              nim: '22091397073',
              email: 'putririzki.22073@mhs.unesa.ac.id',
              jurusan: 'D4 Manajemen Informatika',
              foto: 'images/ktm puci.jpg',
            ),
            KartuNama(
              nama: 'Dion Danianto',
              nim: '22091397058',
              email: 'dion.22058@mhs.unesa.ac.id',
              jurusan: 'D4 Manajemen Informatika',
              foto: 'images/dion.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class KartuNama extends StatelessWidget {
  final String nama;
  final String nim;
  final String email;
  final String jurusan;
  final String foto;

  KartuNama({
    required this.nama,
    required this.nim,
    required this.email,
    required this.jurusan,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.white, // Ganti warna latar belakang lingkaran sesuai kebutuhan
            child: ClipOval(
                child: Image.asset(
                  foto,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
          )
          )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$nama',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('$nim'),
                Text('$email'),
                Text('$jurusan'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
