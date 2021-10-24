import 'package:flutter/material.dart';

class AnimesScreen extends StatefulWidget {
  const AnimesScreen({ Key? key }) : super(key: key);

  @override
  _AnimesScreenState createState() => _AnimesScreenState();
}

class _AnimesScreenState extends State<AnimesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animes'),
      ),
      body: _getBody(),
      drawer: _getFilter(),
    );
  }

  Widget _getBody() {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
        child: Text(
          'Bienvenido',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold 
          ),
        ),
      ),
    );
  }

  Widget _getFilter() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
              image: AssetImage('assets/Animes.jpg'),
            )
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Buscar'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}