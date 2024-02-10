import 'dart:math';

import 'package:flutter/material.dart';

class Frases extends StatefulWidget {
  const Frases({super.key});

  @override
  State<Frases> createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {

  int cuenta = 0;

List<String> frases = [
  '“No puedo enseñar nada a nadie. Solo puedo hacerles pensar.” Sócrates',
  '“Un amigo fiel es un alma en dos cuerpos.” Aristóteles',
  '“La peor lucha es la que no se hace.” Karl Marx',
  '“La felicidad de tu vida depende de la calidad de tus pensamientos.” Marco Aurelio',
  '“Todo lo que se hace por amor, se hace más allá del bien y del mal.” Nietzsche'
];

void cambiarFrase() {
  setState(() {
    cuenta=Random().nextInt(frases.length);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Filosofrases"),
      ),
      body: Stack(
        children: [
          Container(color: Colors.blueGrey,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: cambiarFrase,
                    child: Image.asset("assets/filosofos/filosofo" + cuenta.toString() + ".jpg", width: 400, height: 500,),
                  ),
                ],
              ),
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 80,
                    color: Colors.blue,
                    child: Text(frases[cuenta], style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
