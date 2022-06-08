import 'package:flutter/material.dart';
import 'package:mobile/src/components/textFormFields/textFields.dart';

class RecuperarSenha extends StatefulWidget {
  RecuperarSenha({Key? key}) : super(key: key);

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  TextEditingController textController1 = TextEditingController();
  void initState() {
    super.initState();
    textController1 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Image.asset('lib/src/assets/images/logoSlio.png',
                    width: 145, height: 145),
              ),
              const Text(
                'Esqueceu sua senha ?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Color(0xFF6AD19B)),
              ),
              CampoTexto(controller: textController1, hintText: 'E-mail'),
              Container(
                  margin: const EdgeInsets.all(30.0),
                  child: const Text(
                    'Caso esteja cadastrado, você receberá um e-mail com o código para redefinir sua senha. Esse código é válido por 15 minutos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 370,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/recuperar-senha-step2');
                    },
                    child: const Text('Enviar Código'),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF6AD19B),
                        textStyle: const TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
