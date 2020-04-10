import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
/*
final questionnaires = FirebaseDatabase().reference();

class TicketsGims extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hi'),
        ),
        body: _queryTickets());
  }
}

Widget _queryTickets() {
  return StreamBuilder(
      stream: questionnaires.child('questionnaires').onValue,
      builder: (context, snap) {
        if (!snap.hasData) return Center(child: CircularProgressIndicator());

        return ListView(
          children: <Widget>[
            //Text(snap.data.snapshot.value.runtimeType.toString()),
            //Text(snap.data.snapshot.value.toString()),
            Text(snap.data.snapshot.value[0]['question_number']),
            Text(snap.data.snapshot.value[0]['question']),
            Image.asset(
              snap.data.snapshot.value[0]['picture'],
              fit: BoxFit.fitWidth,
            ),
            //fit: BoxFit.fitWidth,
            Text(snap.data.snapshot.value[0]['answers'][0]),
            Text(snap.data.snapshot.value[0]['answers'][1]),
            Text(snap.data.snapshot.value[0]['answers'][2]),
            Text(snap.data.snapshot.value[0]['answers'][3]),
            //Text(snapshot.value['picture']),
            RaisedButton(
              child: Text('следующий вопрос'),
              onPressed: () {
                questionnaires
                    .child('questionnaires/0')
                    .once()
                    .then((DataSnapshot snapshot) {
                  Map<dynamic, dynamic> data = snapshot.value;
                  print(snapshot.value);
                  //_queryTickets();
                });
              },
            )
          ],
        );
      });
}
*/
/////////////////////////////////// вывод 10 билетов
/*
//database referene.
var _containerForRecentJobs;
var questionnaires =
    FirebaseDatabase.instance.reference().child('questionnaires');
//.orderByChild ('question_number');
//.limitToLast(3);
//.orderByChild('created_at') //order by creation time.
//.limitToFirst(5)//limited to get only 10 documents.
//.startAt(3);
//.endAt(5);
//var q = questionnaires.orderByChild('answers').startAt('3');

//Now you can use stream builder to get the data.

class TicketsGims extends StatefulWidget {
  @override
  _TicketsGimsState createState() => _TicketsGimsState();
}

class _TicketsGimsState extends State<TicketsGims> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Билетики'),
      ),
      body: QueryTickets(),
    );
  }
}

class QueryTickets extends StatefulWidget {
  @override
  _QueryTicketsState createState() => _QueryTicketsState();
}

class _QueryTicketsState extends State<QueryTickets> {
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: questionnaires.onValue,
      builder: (context, snap) {
        if (snap.hasData &&
            !snap.hasError &&
            snap.data.snapshot.value != null) {
          //taking the data snapshot.
          DataSnapshot snapshot = snap.data.snapshot;
          List item = [];
          List _list = [];
//it gives all the documents in this list.
          _list = snapshot.value;
//Now we're just checking if document is not null then add it to another list called "item".
//I faced this problem it works fine without null check until you remove a document and then your stream reads data including the removed one with a null value(if you have some better approach let me know).
          _list.forEach((f) {
            if (f != null) {
              item.add(f);
            }
          });
          return snap.data.snapshot.value == null
//return sizedbox if there's nothing in database.
              ? SizedBox()
//otherwise return a list of widgets.
              : ListView.builder(
//scrollDirection: Axis.vertical,

                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Text(item[3]['question']),
                        Image.asset(item[3]['picture']),
                        Text(item[3]['answers'][0]),
                        Text(item[3]['answers'][1]),
                        Text(item[3]['answers'][2]),
                        Text(item[3]['answers'][3]),
                        RaisedButton(
                          child: Text('следующий вопрос'),
                          onPressed: () {},
                        )
                      ],
                    );
                  },
                );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
*/
// конец вывода 10ти блетов

//новый способ
/*
class TicketsGims extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Новый способ от китаянки'),
        ),
        body: _queryTickets());
  }
}

Widget _queryTickets() {
  return StreamBuilder(
    stream: questionnaires.child('questionnaries').onValue,
    builder: (context, AsyncSnapshot<Event> snap) {
      if (snap.hasData) {
        return ListView(
          children: <Widget>[
            Text(snap.data.snapshot.value[2]['question_number'])
          ],
        );
      }
      return Center(child: CircularProgressIndicator());
    },
  );
}
*/
