import 'package:flutter/material.dart';
import 'VistaPostre.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        height: 320,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            productItem(context),
            productItem(context),
            productItem(context),
            productItem(context),
          ],
        )
      )
    );
  }
}

Widget productItem(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VistaPostre()),
      );
    },
    child: Container(
      height: 320,
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://www.bakedbyanintrovert.com/wp-content/uploads/2018/05/Birthday-Cake-Recipe-Image-735x735.jpg",
              fit: BoxFit.cover,
              height: 200,
              width: 250,
            ),
            Padding(
              child: Text("Pasteles", style: TextStyle(fontSize: 20)),
              padding: EdgeInsets.all(10),
            ),
            Padding(
              padding: EdgeInsets.only(left:10, right:10),
              child: SizedBox(
                width: 220,
                child: Text("Gran variedad de pasteles de diversos sabores", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),),
              ),
            )
          ],
        ),
      )
    )
  );
}