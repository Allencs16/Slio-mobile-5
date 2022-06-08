import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/components/textFormFields/textFields.dart';

class RedefinirSenha extends StatefulWidget {
  RedefinirSenha({Key? key}) : super(key: key);

  @override
  State<RedefinirSenha> createState() => _RedefinirSenhaState();
}

class _RedefinirSenhaState extends State<RedefinirSenha> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  bool passwordVisibility = false;

  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
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
              Padding(
                padding:
                    EdgeInsets.only(top: 50, right: 10, bottom: 30, left: 10),
                child: TextFormField(
                  controller: textController1,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController1',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Nova senha',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF6AD19B),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF6AD19B),
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 10, bottom: 50, left: 10),
                child: TextFormField(
                  controller: textController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController2',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirmar senha',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF6AD19B),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF6AD19B),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: const Color(0x0004eea0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 370,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Confirmar'),
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
