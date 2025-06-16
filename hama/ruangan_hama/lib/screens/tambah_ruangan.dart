import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TambahRuanganPage(),
  ));
}

class TambahRuanganPage extends StatefulWidget {
  @override
  _TambahRuanganPageState createState() => _TambahRuanganPageState();
}

class _TambahRuanganPageState extends State<TambahRuanganPage> {
  final _namaRuanganController = TextEditingController();
  final _kapasitasController = TextEditingController();

  void _simpanRuangan() {
    final nama = _namaRuanganController.text;
    final kapasitas = _kapasitasController.text;

    // Di sini bisa ditambahkan logika untuk menyimpan data, misalnya ke database atau API
    print('Nama Ruangan: $nama');
    print('Kapasitas: $kapasitas');

    // Reset input setelah simpan
    _namaRuanganController.clear();
    _kapasitasController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data ruangan berhasil disimpan!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Ruangan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Ruangan:'),
            TextField(
              controller: _namaRuanganController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text('Kapasitas:'),
            TextField(
              controller: _kapasitasController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: _simpanRuangan,
                child: Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
