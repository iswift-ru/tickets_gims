import 'package:flutter/material.dart';
import 'package:tickets_gims/pages/main_screen.dart';
import 'package:tickets_gims/services/authentication.dart';
import 'package:tickets_gims/pages/root_page.dart';
import 'package:tickets_gims/pages/tickets_gims.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MainScreen(),
        '/login': (BuildContext context) => RootPage(auth: new Auth()),
        '/tickets_gims': (BuildContext context) => TicketsGims(),
      },
        title: 'Boats2 социальная сеть капитанов и судоводителей',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        //home: new RootPage(auth: new Auth())
        //home: MainScreen()
    );

  }
}

