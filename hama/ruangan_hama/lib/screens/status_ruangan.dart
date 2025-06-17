import 'package:flutter/material.dart';

void main() {
  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StatusDataRuanganPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StatusDataRuanganPage extends StatelessWidget {
  const StatusDataRuanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataRuangan = [
      {'penyewa': '', 'ruangan': 'Ruang 1', 'status': '', 'akses': false},
      {'penyewa': '', 'ruangan': 'Ruang 2', 'status': '', 'akses': false},
      {'penyewa': '', 'ruangan': 'Ruang 3', 'status': '', 'akses': true},
      {'penyewa': '', 'ruangan': 'Ruang 4', 'status': '', 'akses': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Status Data Ruangan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              "📄 Status data ruangan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(1),
              },
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Colors.grey),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Nama Penyewa', textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Nama Ruangan', textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Status Ruang', textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Akses', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                ...dataRuangan.map((data) {
                  return TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(''), // Kosong atau bisa diisi nanti
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(data['ruangan']),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(''), // Status bisa diisi dengan logika
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Checkbox(
                          value: data['akses'],
                          onChanged: (_) {},
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // kembali ke halaman sebelumnya
              },
              child: const Text('Kembali ke Beranda'),
            ),
          ],
        ),
      ),
    );
  }
}
