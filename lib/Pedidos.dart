import 'package:flutter/material.dart';

class Pedidos extends StatefulWidget {
  @override
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  Future<List> _products;
  List content;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TODO: Llamar a la funcion future
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            pedidoItem(),
            pedidoItem(),
            pedidoItem(),
            pedidoItem(),
            pedidoItem(),
          ],
        ),
        /*
        FutureBuilder(
              future: _products,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  content = snapshot.data;
                  return ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: content.length
                    itemBuilder: (BuildContext context, int index) {
                      return featuredProductCard(content[index]);
                    }
                  )
                } else {
                  return Align(
                    alignment: Alignment.center,
                    child: Text("No hay productos en esta cetegoría")
                  );
                }
              }
            ),*/
      )
    );
  }

  Widget pedidoItem(/* Pedido pedido*/) {
    return Container(
      height: 160,
      child: Row(
        children: <Widget>[
          Image.network("https://www.bakedbyanintrovert.com/wp-content/uploads/2018/05/Birthday-Cake-Recipe-Image-735x735.jpg",
            height: MediaQuery.of(context).size.height,
          ),
          Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("Pastel X", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 200,
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare, nisl ut interdum tincidunt, tortor nulla varius justo, eget maximus eros dui vitae sapien. ", 
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
                )
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 200,
                  child: Text("23/12/2020 - 05:00 PM", 
                    style: TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
                )
              ),

              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 200,
                  child: Text("Entregado", 
                    style: TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}
