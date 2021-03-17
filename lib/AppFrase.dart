import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A ciência sem religião é manca, e a religião sem a ciência é cega",
    "Duas coisas são infinitas: o universo e a estupidez humana; e eu não tenho certeza sobre o universo",
    "Em vez de se tornar um homem de sucesso, tente tornar-se um homem de valor",
    "O segredo da criatividade é: saber como esconder suas fontes",
    "A diferença entre o gênio e o estúpido é que o gênio tem seus limites",
    "A fraqueza da atitude transforma-se em fraqueza de caráter",
    "Somente uma vida vivida para os outros é uma vida que vale a pena",
    "Que a força esteja com voce.",
    "Não é que eu sou inteligente, é que eu fico com os problemas por mais tempo",
    "Eu nunca penso no futuro. Ele vem em breve",
  ];


  var _fraseGerada = "Clique abaixo gerar uma frase!";
  void _gerarFrase(){
    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de Albert Einstein - Motivacional "),

        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Vamos lá", textScaleFactor: 2,),
              Image.asset("imagens/fraseDia.jpg"),
              Text(
                _fraseGerada,

                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueGrey
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.blue,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}