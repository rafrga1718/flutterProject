
import 'package:flutter/material.dart';
import 'package:proyect/Tabs/Tabs.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.only(left: 32.0, top: 200.0, right: 32.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            new TextFormField(
              decoration: new InputDecoration(
              labelText: 'Enter your username'
              ),
            ),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: 'Enter your password',
              ),
              obscureText: true,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 12.0),
            child:
            new RaisedButton(

                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new TabBarDemo()),
                  );
                },
              child: new Text("Login"),
            ),
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
}
