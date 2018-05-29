import 'package:flutter/material.dart';
import 'package:proyect/Login.dart';
import 'package:proyect/Tabs/Profile.dart';
import 'package:proyect/Tabs/PerfilLocal.dart';
void main() {
  runApp(new TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.view_list)),
                new Tab(icon: new Icon(Icons.home)),
                new Tab(icon: new Image.asset("images/group.png", height: 30.0)),
                new Tab(icon: new Icon(Icons.favorite)),
                new Tab(icon: new Icon(Icons.person)),

              ],
            ),
            title: new Text('Tabs Demo'),
          ),
          body: new TabBarView(
            children: [
              new Login(),
              new PerfilLocal(),
              new Icon(Icons.directions_bike),
              new Icon(Icons.directions_bus),
              new Profile(),
            ],
          ),
        ),
      ),
    );
  }
}

