import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  final int jogada;
  final int jogadaOponente;

  Second({required this.jogadaOponente, required this.jogada,super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Pedra, Papel, Tesoura',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(children: <Widget>[


          Text("Jogada do oponente:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
          if(jogadaOponente == 1)
            Image.asset('images/pedra.png', width: 100),
          if(jogadaOponente == 2)
            Image.asset('images/papel.png', width: 100),
          if(jogadaOponente == 3)
            Image.asset('images/tesoura.png', width: 100),

          Text("Sua jogada:", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
          if(jogada == 1)
            Image.asset('images/pedra.png', width: 100),
          if(jogada == 2)
            Image.asset('images/papel.png', width: 100),
          if(jogada == 3)
            Image.asset('images/tesoura.png', width: 100),

          if(jogada == jogadaOponente) ...[
            Image.asset('images/empate.png', width: 100),
          ]
          else if (jogada == 1 && jogadaOponente == 2 || jogada == 2 && jogadaOponente == 3 || jogada == 3 && jogadaOponente == 1) ...[
            Image.asset('images/derrota.png', width: 100),
            Text("Você perdeu...", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
          ]else ...[
            Image.asset('images/vitoria.png', width: 100),
            Text("Você ganhou!", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
          ],

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('Jogar novamente', style: TextStyle(color: Colors.white,fontSize: 30),),
          )

        ],
        )
      )
    );
  }}
