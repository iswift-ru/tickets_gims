import 'package:tickets_gims/build_drawer.dart';
import 'package:tickets_gims/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boats2 - социальная сеть капитанов и судоводителей'),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.assignment_ind),
            iconSize: 40.0,
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          // action button

          // overflow menu
        ],
      ),
      drawer: BuildDrawer(),
    );
  }
}
