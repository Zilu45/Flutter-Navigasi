import 'package:flutter/material.dart';
import 'package:flutter_navigation/main.dart';
import 'package:flutter_navigation/view/profile.dart';

class Bottomnavbar extends StatefulWidget {
  int activePage;
 Bottomnavbar(this.activePage);

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  void _changeSelectedNavbar(index){
    if(index == 0){
      Navigator.pushReplacementNamed(context, '/');
    }
    else if(index == 2){
      Navigator.pushReplacement(
               context, 
              MaterialPageRoute(
                builder: (context) => profileview(
                nama: "atan",
                alamat: "Malang",
                juara: 1,
                )
                ),
                );   
            }
            else if(index == 1)
                Navigator.pushReplacementNamed(context, '/home', 
                );
            else if(index == 3)
                Navigator.pushReplacementNamed(context, '/transaksi', arguments: {
                  "id":1,
                  "product":"buah",
                  "price":400,
                }
                );
    }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: const Color.fromARGB(255, 137, 137, 137),
      currentIndex: widget.activePage,
      onTap: _changeSelectedNavbar,
      items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.login)),
        label: 'Login'
        ),
      BottomNavigationBarItem(icon: IconButton(onPressed: (){
        } ,icon: Icon(Icons.home)),
        label: 'HOME'
        ),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.person_sharp)),
        label: 'Profile'
        ), 
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.sell)),
        label: 'Transaksi'
        ),
      ],
    );
  }
}