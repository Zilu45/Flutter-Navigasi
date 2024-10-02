import 'package:flutter/material.dart';
import 'package:flutter_navigation/view/homeview.dart';
import 'package:flutter_navigation/view/profile.dart';
import 'package:flutter_navigation/widget/bottomnavbar.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("halaman login"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/login');
            }, child: Text('login'),
            ),

             SizedBox(height: 30,),
            Text("halaman Home"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
            }, child: Text('home'),
            ),


            SizedBox(height: 30,),
            Text("Profile"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, 
              MaterialPageRoute(
                builder: (context) => profileview(
                nama: "atan",
                alamat: "Malang",
                juara: 1,)
                ),
                );
            }, child: Text('Profile'),
            ),
            
            SizedBox(height: 30,),
            Text("halaman Transaksi"),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/transaksi',
            arguments: 
                {
              'id' : 1,
              'product' : 'Bakso',
              'price' : 500,
              }
            );
            }, child: Text('Transaksi'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottomnavbar(0),
    );
  }
}