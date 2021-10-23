import 'package:daniel_cardona_3_2021_2_p1/screens/principa_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Animes App',
      home: PrincipalScreen(),
    );
  }
}