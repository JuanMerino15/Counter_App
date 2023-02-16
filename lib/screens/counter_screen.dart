

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {});
  }
  void decrementar(){
    contador--;
    setState(() {});
  }
  void reiniciar(){
    contador =0;
    setState(() {});
  }
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
      CustomFloatingActionButton(
        decrementar: decrementar,
         incrementar: incrementar,
          reiniciar: reiniciar,
          ),
      );
}
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function incrementar;
  final Function decrementar;
  final Function reiniciar;
  
  const CustomFloatingActionButton({
    Key? key, required this.incrementar, required this.decrementar, required this.reiniciar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
           FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: () => decrementar(),
           child:const  Icon(Icons.exposure_minus_1),
          ),
         
            FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
           onPressed: () => reiniciar(),
           child:const  Icon(Icons.restart_alt),
          ),
         
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: ( ) => incrementar(),
           child:const  Icon(Icons.exposure_plus_1),
          ),
          
          
      ],
    );
  }
}