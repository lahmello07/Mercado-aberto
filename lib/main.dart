import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'componente/barrapesquisa.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 64,
          elevation: 0,
          leading: Icon(Icons.menu, color:Colors.black ,),
          backgroundColor: Color.fromARGB(255, 245, 212, 21),
         actions: [
          CampoPesquisa(),
          Icon(Icons.shopping_cart, color:Colors.black ,),
          ],
           bottom: const PreferredSize(
           preferredSize: Size.fromHeight(10),
           child:
           ListTile(
              leading: Icon(Icons.pin_drop_sharp, size:20,), 
              iconColor: Colors.black,
              title: Text("Enviar para Marcelo Queiroz"),
           ),
         ), 
       ),

      body:Container( 
          padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          ),
           decoration: const BoxDecoration(
           gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: FractionalOffset(0.5, 0.2),
            colors: [
              Color.fromARGB(255, 245, 212, 21), // Cor amarela
              Color(0xfff5f5f5), // Cor cinza fundo
            ],
          ),
        ), 
      ),
    );
  }
}
