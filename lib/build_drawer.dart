import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets_gims/oval_right_border_clipper.dart';
import 'package:flutter/services.dart';


//static final String path = "lib/src/pages/navigation/drawer1.dart";
//final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
final Color primary = Colors.white;
final Color active = Colors.blue;

class BuildDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.blue)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {
                        SystemChannels.platform
                            .invokeMethod<void>('SystemNavigator.pop');
                      },
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue])),
                    child: CircleAvatar(
                      radius: 43,
                      backgroundImage: NetworkImage(
                          'https://boats2.ru/include/templates/images/icon/logo-72.png'),

                      //backgroundImage: CachedNetworkImageProvider(image),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Boats2",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  Text(
                    "социальная сеть капитанов и судоводителей",
                    style: TextStyle(color: active, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  _buildDivider(),
                  ListTile(
                      leading: Icon(Icons.home, color: Colors.blue,),

                      title: Text('На главную'),
                      onTap: () {Navigator.pushNamed(context, '/');}),
                  _buildDivider(),
                  ListTile(
                      leading: Icon(Icons.question_answer, color: Colors.blue,),

                      title: Text('Билеты ГИМС'),
                      onTap: () {Navigator.pushNamed(context, '/tickets_gims');}),
                  _buildDivider(),
                  ListTile(
                      leading: Icon(Icons.insert_comment, color: Colors.blue,),
                      title: Text('О приложении'),
                      onTap: () {/*
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutQuiz()),
                        );
                      */}),
                  _buildDivider(),
                  ListTile(
                      leading: Icon(Icons.info, color: Colors.blue,),
                      title: Text('Правила экзамена'),
                      onTap: () {/*
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RulesExam()),
                        );
                      */}),
                  _buildDivider(),
                  ListTile(
                      leading: Icon(Icons.contact_mail, color: Colors.blue,),
                      title: Text('Контакты'),
                      onTap: () {/*
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContactUs()),
                        );
                      */}),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Divider _buildDivider() {
  return Divider(
    color: active,
  );
}
