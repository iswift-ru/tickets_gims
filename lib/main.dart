import 'package:flutter/material.dart';
import 'package:tickets_gims/pages/main_screen.dart';
import 'package:tickets_gims/services/authentication.dart';
import 'package:tickets_gims/pages/root_page.dart';
import 'package:tickets_gims/pages/tickets_gims.dart';
import 'package:provider/provider.dart';

/*
void main() => runApp(ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TicketsGIMS(),



      ),
    ));
 */
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MainScreen(),
        '/login': (BuildContext context) => RootPage(auth: new Auth()),
        '/tickets_gims': (BuildContext context) => TicketsGims(),
      },
      title: 'Boats2 ',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: new RootPage(auth: new Auth())
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: Consumer<Counter>(
        builder: (context, counter, _) {
          return MaterialApp(
            supportedLocales: const [Locale('en')],
            localizationsDelegates: [
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
              _ExampleLocalizationsDelegate(counter.count),
            ],
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}

 */
