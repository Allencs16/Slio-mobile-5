import 'package:flutter/material.dart';

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
        alignment: AlignmentDirectional.topCenter,
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
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        color: Color.fromARGB(136, 0, 0, 0),
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
