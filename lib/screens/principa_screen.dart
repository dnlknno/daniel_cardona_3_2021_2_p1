import 'package:flutter/material.dart';

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
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}