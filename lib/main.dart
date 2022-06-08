import 'package:flutter/material.dart';
import 'package:mobile/src/screens/home/home.dart';
import 'package:mobile/src/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/recuperar-senha': (BuildContext context) => Home()
        });
  }
}
