import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

int count = 0;
final questionnaires = FirebaseDatabase().reference();

class TicketsGims extends StatefulWidget {
  @override
  _TicketsGimsState createState() => _TicketsGimsState();
}

class _TicketsGimsState extends State<TicketsGims> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Билет'),
        ),
        body: QueryTickets());
  }
}

class QueryTickets extends StatefulWidget {
  @override
  _QueryTicketsState createState() => _QueryTicketsState();
}

class _QueryTicketsState extends State<QueryTickets> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: questionnaires.child('questionnaires/$count').onValue,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          print(snapshot.data);
          return ListView(
            children: <Widget>[
              Text(snapshot.data.snapshot.value['question_number']),
              Text(snapshot.data.snapshot.value['question']),
              Image.asset(
                snapshot.data.snapshot.value['picture'],
              ),
              //fit: BoxFit.fitWidth,
              Text(snapshot.data.snapshot.value['answers'][0]),
              Text(snapshot.data.snapshot.value['answers'][1]),
              Text(snapshot.data.snapshot.value['answers'][2]),
              Text(snapshot.data.snapshot.value['answers'][3]),
              Count(
                count: count,
                onCountSelected: () {
                  print("Привет твари");
                },
                onCountChange: (int val) {
                  setState(() => count += val);
                },
              ),
              /*RaisedButton(
                child: Text('следующий вопрос'),
                onPressed: () => Count(),
              )*/
            ],
          );
        });
  }
}

class Count extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChange;

  Count(
      {@required this.count,
      @required this.onCountChange,
      this.onCountSelected});

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("Следующий вопрос"),
          onPressed: () {
            onCountChange(1);
          },
        ),
        /*FlatButton(
          child: Text("$count"),
          onPressed: () => onCountSelected(),
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            onCountChange(-1);
          },
        ),*/
      ],
    );
  }
}
