import 'package:flutter/material.dart';
import 'package:flutter_navigation/view/homeview.dart';
import 'package:flutter_navigation/view/loginview.dart';
import 'package:flutter_navigation/view/profile.dart';
import 'package:flutter_navigation/view/transaksiview.dart';
import 'package:flutter_navigation/widget/bottomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => Loginview(),
        '/home': (_) => Homeview(),
        '/transaksi': (_) => Transaksiview(),
        // '/profile': (_) => profileview(),
      },
    );
  }
}

