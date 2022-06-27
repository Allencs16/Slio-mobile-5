import 'package:flutter/material.dart';
import 'package:mobile/src/components/404/InicioVazio.dart';
import 'package:mobile/src/components/cads/cardHome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: AlignmentDirectional.center,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Início',
                style: TextStyle(
                  color: Color(0xFF6AD19B),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              'lib/src/assets/images/homeDecorate.png',
              fit: BoxFit.fill,
            ),
            Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                child: const Text(
                  'Itens próximos da validade:',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            const InicioVazio()

            // CardHome(
            //   nomeProduto: 'Picanha',
            //   validadeProduto: '7',
            // ),
            // CardHome(
            //   nomeProduto: 'Maminha',
            //   validadeProduto: '10',
            // ),
            // CardHome(
            //   nomeProduto: 'Alcatra',
            //   validadeProduto: '89',
            // ),
            // CardHome(
            //   nomeProduto: 'Patinho',
            //   validadeProduto: '2',
            // ),
            // CardHome(
            //   nomeProduto: 'Cupim',
            //   validadeProduto: '4',
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        color: const Color.fromARGB(136, 0, 0, 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          GestureDetector(
            child: Image.asset('lib/src/assets/images/icon-toHome.png'),
            onTap: () => {Navigator.pushNamed(context, '/home')},
          ),
          GestureDetector(
            child: Image.asset('lib/src/assets/images/icon-product.png'),
            onTap: () => {Navigator.pushNamed(context, '/home')},
          ),
          GestureDetector(
            child: Image.asset('lib/src/assets/images/google_icon.png'),
            onTap: () => {Navigator.pushNamed(context, '/home')},
          ),
        ]),
      ),
    );
  }
}
