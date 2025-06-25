import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';

void main() {
  runApp(const BookingRuanganApp());
}

class BookingRuanganApp extends StatelessWidget {
  const BookingRuanganApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Booking Ruangan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
     
      },
    );
  }
}
