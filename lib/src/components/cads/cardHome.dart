import 'package:flutter/cupertino.dart';

class CardHome extends StatefulWidget {
  String nomeProduto;
  String validadeProduto;
  CardHome({required this.nomeProduto, required this.validadeProduto});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(136, 0, 0, 0),
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
                child: Image.asset('lib/src/assets/images/add.png'),
                onTap: () => {Navigator.pushNamed(context, '/home')}),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                widget.nomeProduto,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('Vence em ${widget.validadeProduto} dias')
            ]),
            GestureDetector(
                child: Image.asset('lib/src/assets/images/arrow_go.png'),
                onTap: () => {Navigator.pushNamed(context, '/home')}),
          ]),
        ));
  }
}
