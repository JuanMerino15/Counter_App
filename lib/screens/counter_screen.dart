

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    
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
      CustomFloatingActionButton(),
      );
}
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
           FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: null,
           child:const  Icon(Icons.exposure_minus_1),
          ),
         
            FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
           onPressed: null,
           child:const  Icon(Icons.restart_alt),
          ),
         
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: null,
           child:const  Icon(Icons.exposure_plus_1),
          ),
          
          
      ],
    );
  }
}