import 'dart:convert';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

import '../../components/textFormFields/textFields.dart';
import '../../models/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  bool passwordVisibility = false;

  Login() {
    if (textController1.text == 'brenoallencs@gmail.com' && textController2.text == 'teste1234'){
      Navigator.pushNamed(context, '/home');
      return;
    } else {
      const snackBar = SnackBar(content: Text('email ou senha invalido!'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }
  }


  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slio'),
        backgroundColor: const Color(0xFF6AD19B),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Image.asset('lib/src/assets/images/logoSlio.png',
                  width: 145, height: 145),
            ),
            CampoTexto(controller: textController1, hintText: 'E-mail'),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(28, 28, 28, 28),
              child: TextFormField(
                controller: textController2,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController2',
                  const Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: !passwordVisibility,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: const Color(0xFF6AD19B),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: const Color(0xFF6AD19B),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color(0x0004eea0),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => passwordVisibility = !passwordVisibility,
                    ),
                    child: Icon(
                      passwordVisibility
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: const Color(0xFF757575),
                      size: 22,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/recuperar-senha')},
                child: Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    child: const Text(
                      'Recuperar Senha',
                      textAlign: TextAlign.end,
                    ))),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: 370,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => {
                    Login()
                  },
                  child: const Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF6AD19B),
                      textStyle: const TextStyle(
                        fontSize: 20,
                      )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
