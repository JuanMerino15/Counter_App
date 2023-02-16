import 'package:counter_app5a/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget{
  const CounterApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
   // ignore: prefer_const_constructors
   return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
      
    
   
   );

  }

  
}