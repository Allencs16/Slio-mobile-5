import 'package:flutter/material.dart';
import 'package:mobile/src/components/404/InicioVazio.dart';
import 'package:mobile/src/screens/home/home.dart';
import 'package:mobile/src/screens/login/login.dart';
import 'package:mobile/src/screens/recuperar-senha/confirmar-codigo.dart';
import 'package:mobile/src/screens/recuperar-senha/recuperar-senha.dart';
import 'package:mobile/src/screens/recuperar-senha/redefinir-senha.dart';

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
          '/recuperar-senha': (BuildContext context) => RecuperarSenha(),
          '/recuperar-senha-step2': (BuildContext context) => ConfirmarCodigo(),
          '/recuperar-senha-step3': (BuildContext context) => RedefinirSenha(),
          '/login': (BuildContext context) => LoginPage(),
          '/home': (BuildContext context) => Home(),
        });
  }
}
