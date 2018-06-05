
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class EventosSeguidos extends StatelessWidget {
  Widget fill (){
    var i;
    for (i=0;i<2;i++){
      Event();
    }
  }
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
        padding: const EdgeInsets.only(left: 16.0, top: 0.0, right: 16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            bar(),
            new Container(
              margin: const EdgeInsets.only(top: 36.0, left: 16.0),
              child:
              new Column(
                children: <Widget>[
                  Event(),
                  Event()
                ],
              )
            )
            ],
      ),
    );
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        body: new ListView(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
  Widget FastText(double izquierda, double superior, String texto, double tamanyo, Color n ){
    return new Container(
      margin: EdgeInsets.only(top: superior, left: izquierda),
      child:
      new Text(texto,
        style: new TextStyle(
            fontSize: tamanyo,
            color: n
        ),
      ),
    );
  }

  Widget Event(){
    return new Container(
      color: Colors.black12,
      margin: const EdgeInsets.only(top:16.0 ),
      child:
        new Row(
          children: <Widget>[
            new Container(
                width: 70.0,
                height: 70.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('images/lake.jpg')
                    )
                )),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FastText(12.0, 8.0, 'Nombre del evento ', 20.0, Colors.black87),
                new Container(
                  margin: const EdgeInsets.only(top:8.0, left:12.0, ),
                  child:
                  new Row(
                    children: <Widget>[

                      new Icon(Icons.place),
                      FastText(4.0, 0.0, 'Barcelona', 18.0, Colors.black54),
                    ],
                  ),
                ),

                FastText(16.0, 8.0, '24/5/18', 14.0, Colors.black54),

              ],
            ),
            new Container(
              margin: const EdgeInsets.only(left: 50.0, top: 60.0),
              child:
              new Icon(Icons.clear),
            )

          ],
        ),
    );
  }
  Widget bar(){
    return new Container(
      margin: const EdgeInsets.only(left: 12.0,right: 12.0),
      child: new TextFormField(
        decoration: new InputDecoration(
          hintText: 'Busca eventos',
          prefixIcon: new Icon(Icons.search),
          suffixIcon: new Icon(Icons.backspace),

        ),
      ),
    );
  }

}

