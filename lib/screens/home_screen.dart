

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    int contador = 0;
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
            'Número de taps: ',
            style: estiloTexto ,
            ),
          Text(
            '$contador',
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
          contador++;
          print('Presionaste el boton');
          print(contador);
        },
         child:const  Icon(Icons.add),
        ),
      );
}

}