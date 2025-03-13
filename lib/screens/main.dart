import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jogo_da_velha/screens/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red))
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {

    return HomePageStates();
  }
}

class HomePageStates extends State<HomePage>{

  int random(){
    var jogadaOponente = Random().nextInt(3) + 1;
    return jogadaOponente;
  }

  void jogar(int jogada){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Second(jogadaOponente: random(),jogada: jogada)));
  }

  int valorTeste = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedra, Papel, Tesoura',
            style: TextStyle(
            fontSize: 25,
            color: Colors.white)
            ),
        backgroundColor: Colors.red
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/padrao.png', width: 100),
                  Text('Escolha do app (Aleatório)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
            ),
            Container(
              height: 200,
              child: Column(
                children: <Widget>[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => jogar(1),
                      child: Image.asset('images/pedra.png', width: 100)
                    ),
                    GestureDetector(
                        onTap: () => jogar(2),
                        child: Image.asset('images/papel.png', width: 100)
                    ),
                    GestureDetector(
                        onTap: () => jogar(3),
                        child: Image.asset('images/tesoura.png', width: 100)
                    )
                    ],
                  ),
                  Text('Sua escolha', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20))
                ]
              )
            )
          ],
        ),
      )


    );
  }
}