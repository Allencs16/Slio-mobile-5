import 'package:flutter/material.dart';

class InicioVazio extends StatelessWidget {
  const InicioVazio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(136, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(
          'Ops...Não há nada aqui.',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text('Experimente adicionar um', style: TextStyle(fontSize: 18)),
        Text('novo item', style: TextStyle(fontSize: 18)),
      ]),
    );
  }
}
