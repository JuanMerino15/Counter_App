

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
     int a = 0;
  int b = 0;
  var resultado;
    const TextStyle estiloTexto= TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 5.5,
      ),
      backgroundColor: Color.fromARGB(255, 98, 224, 93),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Resultado de multiplicación',
            style: estiloTexto ,
            ),
          Text(
            '$resultado',
          style: estiloTexto,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
      FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 207, 31),
        foregroundColor: const Color.fromARGB(255, 34, 34, 36),
        onPressed: () {
          resultado = a * b;
          print('Multiplicaste: $a por $b');
          print(resultado);
        },
         child:const  Icon(Icons.add),
        ),
      );
}

}