import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.pink[200],
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,            
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage("https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto/wp-cms/uploads/2019/09/i-1-inside-bumble-ceo-whitney-wolfe-herds-mission-to-build-the-female-internet-FA1019BUMB002.jpg")
                    )
                  )
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("María Davalos Lopez", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500)),
                  )
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.pink[200], width: 1.0),
                borderRadius: BorderRadius.circular(4.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone_android, size: 35),
                    title: Text("Teléfono", style: TextStyle(fontSize: 13)),
                    subtitle: Text("418-109-8544", style: TextStyle(fontSize: 16)),
                  ),
                  ListTile(
                    leading: Icon(Icons.email, size: 35),
                    title: Text("Email", style: TextStyle(fontSize: 13)),
                    subtitle: Text("cruji41@hotmail.com", style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.pink[200], width: 1.0),
                borderRadius: BorderRadius.circular(4.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home, size: 35),
                    title: Text("Dirección", style: TextStyle(fontSize: 13)),
                    subtitle: Text("5 de Mayo #22 B", style: TextStyle(fontSize: 16)),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on, size: 35),
                    title: Text("Ciudad", style: TextStyle(fontSize: 13)),
                    subtitle: Text("San Diego de la Unión", style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}