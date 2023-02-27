

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int a = 0;
  int b = 0;
  var resultado;

  void multiplicar(){
   resultado = a * b;
    setState(() {});
   
  }
  void incrementara(){
    a++;
    setState(() {});
  }
  void decrementara(){
    a--;
    setState(() {});
  }
  void reiniciar_a(){
    a =0;
    setState(() {});

  }
  void incrementarb(){
    b++;
    setState(() {});
  }
  void decrementarb(){
    b--;
    setState(() {});
  }
  void reiniciar_b(){
    b=0;
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
        title: const Text('Multiplicador Basico'),
        elevation: 5.5,
      ),
      backgroundColor: Color.fromARGB(255, 98, 224, 93),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Multipicación ',
            style: estiloTexto ,
            ),
          Text(
            '$a', 
            
          style: estiloTexto,
          ),
          Text(
            'x', 
            
          style: estiloTexto,
          ),
         Text(
            '$b', 
            
          style: estiloTexto,
          ),
           Text(
            '= $resultado', 
            
          style: estiloTexto,
          ),
      
      
        ],
       
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: 
      CustomFloatingActionButton(
        
         multiplicar: multiplicar,
         decrementara: decrementara,
         incrementara: incrementara,
         reiniciar_a:   reiniciar_a,
         decrementarab: decrementarb,
         incrementarb: incrementarb,
         reiniciar_b: reiniciar_b,
         
          ),
      );
}
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function multiplicar;
  final Function decrementara;
  final Function incrementara;
  final Function reiniciar_a;
  final Function decrementarab;
  final Function incrementarb;
  final Function reiniciar_b;
 
  const CustomFloatingActionButton({
    Key? key, required this.multiplicar, required this.decrementara, required this.incrementara, required this.reiniciar_a, required this.decrementarab, required this.incrementarb, required this.reiniciar_b
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
           FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: () => multiplicar(),
           child:const  Icon(Icons.close),
          ),
           FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: () => decrementara(),
           child:const  Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: () => decrementarab(),
           child:const  Icon(Icons.exposure_minus_1),
          ),
          
            FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
           onPressed: () => reiniciar_a(),
           child:const  Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
           onPressed: () => reiniciar_b(),
           child:const  Icon(Icons.restart_alt),
          ),
            FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: ( ) => incrementara(),
           child:const  Icon(Icons.exposure_plus_1),
          ),
          FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 207, 31),
          foregroundColor: const Color.fromARGB(255, 34, 34, 36),
          onPressed: ( ) => incrementarb(),
           child:const  Icon(Icons.exposure_plus_1),
          ),
          
          
          
      ],
    );
  }
}