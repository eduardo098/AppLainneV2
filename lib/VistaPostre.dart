import 'package:flutter/material.dart';
import 'CreadorPastel.dart';

class VistaPostre extends StatefulWidget {
  @override
  _VistaPostreState createState() => _VistaPostreState();
}

class _VistaPostreState extends State<VistaPostre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Postre Y"), backgroundColor: Colors.pink[200],),
      body: Column(
        children: <Widget>[
          Container(
            height: 580,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://www.bakedbyanintrovert.com/wp-content/uploads/2018/05/Birthday-Cake-Recipe-Image-735x735.jpg",
                    fit: BoxFit.cover,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      child: Text("Pastel Y", style: TextStyle(fontSize: 20)),
                        padding: EdgeInsets.all(15),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10, right:10),
                    child: SizedBox(
                      width: 350,
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisl ut interdum tincidunt, tortor nulla varius justo, eget maximus eros dui vitae sapien. Praesent vitae nulla iaculis, tincidunt risus id, hendrerit nibh. Integer sed orci sed nisl gravida tempor.", 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),),
                    ),
                  )
                ],
              ),
            )
          ),
          SizedBox(
            height: 30,
          ),
          ButtonTheme(
            height: 50,
            minWidth: 250,
            child: RaisedButton(
              color: Colors.pink[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text("ORDENAR", style: TextStyle(fontSize: 18, color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreadorPastel()),
                );
              },
            )
          )
        ],
      )
    );
  }
}