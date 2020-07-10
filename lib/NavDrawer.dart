import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Menu.dart';
import 'Pedidos.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text("Menu"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
            }
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Pedidos"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pedidos()));
            }
          )
        ],
      )
    );
  }
}