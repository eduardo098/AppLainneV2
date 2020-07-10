import 'package:flutter/material.dart';
import 'CreadorPastelPaso2.dart';

class CreadorPastel extends StatefulWidget {
  @override
  _CreadorPastelState createState() => _CreadorPastelState();
}

class _CreadorPastelState extends State<CreadorPastel> {
  Item selectedSize;
  Item selectedFlavor;
  Item selectedFilling;
  Item selectedExtra;

  List<Item> options = <Item> [
    const Item("Chocolate"),
    const Item("Vainilla"),
    const Item("Fresa"),
    const Item("Nuez"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Postre Y"), backgroundColor: Colors.pink[200],),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://www.bakedbyanintrovert.com/wp-content/uploads/2018/05/Birthday-Cake-Recipe-Image-735x735.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 250,
                    ),
                  ],
                ),
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Tamaño", style: TextStyle(fontSize: 20),)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: new DropDownItem("Wrande", selectedSize, options)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Sabor", style: TextStyle(fontSize: 20),)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: new DropDownItem("Fresa", selectedExtra, options)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Relleno", style: TextStyle(fontSize: 20),)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: new DropDownItem("3 Leches", selectedFilling, options)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text("Extras", style: TextStyle(fontSize: 20),)
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: new DropDownItem("3 Leches", selectedExtra, options)
              ),
            ),
            SizedBox(height: 30,),
            ButtonTheme(
              height: 50,
              minWidth: 250,
              child: RaisedButton(
                color: Colors.pink[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text("SIGUIENTE", style: TextStyle(fontSize: 18, color: Colors.white),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreadorPastel2()),
                  );
                },
              )
            )
          ],
        )
      )
    );
  }
}

class DropDownItem extends StatefulWidget {
  String defaultValue;
  Item selection;
  List<Item> options;
  DropDownItem(this.defaultValue, this.selection, this.options);
  @override
  _DropDownItemState createState() => _DropDownItemState();
}

class _DropDownItemState extends State<DropDownItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<Item>(    
        isExpanded: true,
        hint:  Text(widget.defaultValue),
        value: widget.selection,
        onChanged: (Item value) {
          setState(() {
            widget.selection = value;
          });
        },
        items: widget.options.map((Item item) {
          return  DropdownMenuItem<Item>(
            value: item,
            child: Row(
              children: <Widget>[
                Text(
                  item.name,
                  style:  TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      )
    );
  }
}


class Item {
  const Item(this.name);
  final String name;
}