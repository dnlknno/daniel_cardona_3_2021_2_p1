import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:daniel_cardona_3_2021_2_p1/Models/Anime.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({ Key? key }) : super(key: key);

  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _showLogo(),
            SizedBox(height: 20,),
            _showButtonAnimes(),
          ],
        )
        ),
    );
  }

  Widget _showLogo() {
    return Image(
      image: AssetImage('assets/Animes.jpg'),
      width: 380,
    );
  }

  Widget _showButtonAnimes() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              child: Text('Visualizar Animes'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.green;
                  }
                ),
              ),
              onPressed: () => _ViewAnimes(),
            ),
          ),
        ],
      ),
    );
  }

  void _ViewAnimes() async {
    var url = Uri.parse('https://anime-facts-rest-api.herokuapp.com/api/v1');
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    print(data);
  }
}