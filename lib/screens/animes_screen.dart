import 'package:daniel_cardona_3_2021_2_p1/screens/principa_screen.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*FadeInImage(
            placeholder: AssetImage('assets/Animes.jpg'),
            image: NetworkImage(widget)
          ),*/
          Center(
            child: Text(
            'Listado de Animes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold 
              ),
            ),
          )
        ],
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
          ),
          ListTile(
            leading: Icon(Icons.arrow_back_ios_new),
            title: Text('Volver'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => PrincipalScreen()
                )
              );
            },
          )
        ],
      ),
    );
  }
}