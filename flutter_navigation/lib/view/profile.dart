import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/bottomnavbar.dart';

class profileview extends StatelessWidget {
  String nama;
  String? alamat;
  int? juara;
  profileview(
  {super.key, 
  required this.nama, 
  this.alamat, 
  this.juara});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("profile view"),
          Text(nama),
          Text(alamat!),
          Text(juara.toString())
        ],
      ),
      bottomNavigationBar: Bottomnavbar(2),
    );
  }
}