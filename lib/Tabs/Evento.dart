
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class Evento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
        padding: const EdgeInsets.only(left: 16.0, top: 0.0, right: 16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
                  width: 400.0,
                  height: 120.0,
                  child:
                  new Image.asset('images/lake.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                new Container(
                    margin: const EdgeInsets.only( top: 8.0),
                    child:
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(right: 12.0),
                          child:
                          new Icon(Icons.favorite,
                            size: 30.0, color: Colors.red,
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(right: 12.0),
                          child:
                          new Icon(Icons.share,
                            size: 30.0, color: Colors.blue,
                          ),
                        )


                      ],
                    )

                ),


              ],
            ),
            new Container(
              margin: const EdgeInsets.only(top: 12.0),
              child:
              new Text('Nombre del evento',
                style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.black87
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 8.0),
              child:
              new Row(

                children: <Widget>[
                  new Icon(Icons.place),
                  FastText(0.0,0.0,'Barcelona, paseo maragall 20', 16.0, Colors.black87),

                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 12.0, left: 260.0),
              child:
              new RaisedButton(
                disabledColor: Colors.black12,
                elevation: 10.0,
                child: new Text("Seguir",
                  style: new TextStyle(
                      color: Colors.black
                  ),),
              ),
            ),

            FastText(12.0,20.0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 14.0, Colors.black54),
          ],
        )
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
}

