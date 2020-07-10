import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class CreadorPastel2 extends StatefulWidget {
  @override
  _CreadorPastelState createState() => _CreadorPastelState();
}

class _CreadorPastelState extends State<CreadorPastel2> {
  String selectedDate = "";
  TextEditingController deliveryDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Text("Postre Y"), backgroundColor: Colors.pink[200],),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: TextField(
                  controller: deliveryDateController,
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    showDatePicker(
                      context: context,
                      initialDate:  DateTime.now(),
                      firstDate:
                            DateTime(1901),
                      lastDate:  DateTime.now().add( Duration(days: 30)),
                    ).then((date) {
                      String formattedDate = formatDate(date, [dd, '/', mm, '/', yyyy]);
                      selectedDate = formattedDate;
                      deliveryDateController.text = selectedDate;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Fecha de entrega',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Dedicatoria',
                    hintText: "Feliz Cumpleaños, Felicidades, etc..."
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Dibujo',
                    hintText: "Flor, unicornio, etc...",
                  ),
                ),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextField(
                  minLines: 1,
                  maxLines: 10,
                  maxLengthEnforced: true,
                  decoration: InputDecoration(     
                    border: OutlineInputBorder(),
                    labelText: 'Detalles Extra',
                    hintText: "Información adicional acerca de tu pastel.",
                  ),
                ),
              ),
              ButtonTheme(
                height: 50,
                minWidth: 250,
                child: RaisedButton(
                  color: Colors.pink[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text("FINALIZAR PEDIDO", style: TextStyle(fontSize: 18, color: Colors.white),),
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
      )
    );
  }

  String _value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019)
    );
    if(picked != null) setState(() => _value = picked.toString());
  }
}
