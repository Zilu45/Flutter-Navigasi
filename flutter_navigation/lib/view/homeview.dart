import 'package:flutter/material.dart';
import 'package:flutter_navigation/widget/bottomnavbar.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text('ini hamalan umata'),
    bottomNavigationBar: Bottomnavbar(1),
    );
  }
}