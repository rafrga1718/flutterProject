
import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
        padding: const EdgeInsets.only(left: 32.0, top: 20.0, right: 32.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.asset('images/lake.jpg',
              width: 170.0,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              child:
              new Text('Manuel González',
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87
                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 12.0, left: 60.0, right: 60.0),
              child:
              new Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 30.0, left: 0.0, right: 0.0),
              child:
              titulo('EMAIL'),
            ),
            new Container(
                margin: const EdgeInsets.only(top: 8.0),
                child:
                Datos('Alfasoni@gmail.com')
            ),
            new Container(
                margin: const EdgeInsets.only(top: 16.0, left: 0.0, right: 0.0),
                child:
                titulo('TELEFONO')
            ),
            new Container(
                margin: const EdgeInsets.only(top: 8.0),
                child:
                  Datos('123654798')
            ),
            new Container(
                margin: const EdgeInsets.only(top: 16.0),
                child:
                new Row(
                  children: <Widget>[
                    new Text('Eventos seguidos',
                        style: new TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87
                        )
                    ),
                    new Icon(Icons.arrow_drop_down)
                  ],
                )
            )


          ],
        ));

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

  Widget titulo(String text) {
    return new Row(
      children: <Widget>[
        new Text(text,
          style: new TextStyle(
              fontSize: 12.0,
              color: Colors.black45
          ),
        )
      ],

    );
  }
  Widget Datos(String text){
    return new Row(
      children: <Widget>[
        new Text(text,
          style: new TextStyle(
              fontSize: 16.0,
              color: Colors.black87
          ),
        )
      ],

    );
  }
}
