import 'package:flutter/material.dart';
import 'Login.dart';
import 'Menu.dart';
import 'Pedidos.dart';
import 'Perfil.dart';
import 'NavDrawer.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pastelería LAINNE',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget initialWidget = Menu();
  String appBarTitle = "Menu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.pink[200],
      ),
      body: initialWidget,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Side menu',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text("Menu"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  appBarTitle = "Menú";
                  initialWidget = Menu();
                });
              }
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Pedidos"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  appBarTitle = "Pedidos";
                  initialWidget = Pedidos();
                });
              }
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  appBarTitle = "Perfil";
                  initialWidget = Perfil();
                });
              }
            ),
          ],
        )
      ),
    );
  }
}