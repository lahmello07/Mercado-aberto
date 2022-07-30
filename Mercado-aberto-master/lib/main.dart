import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mercadoaberto/componente/card_fretegratis.dart';
import 'package:mercadoaberto/componente/carrosel.dart';
import 'componente/barrapesquisa.dart';
import 'componente/botaocategoria.dart';
import 'componente/card_assinatura.dart';
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
 String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 64,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.menu, color:Colors.black ,),
          ),
          backgroundColor: Color.fromARGB(255, 245, 212, 21),
         actions: [
            CampoPesquisa(),
          
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.shopping_cart, color:Colors.black ,),
          ),
          ],
           bottom:  PreferredSize(
           preferredSize: Size.fromHeight(10),
           child:
           ListTile(
              leading: Icon(Icons.pin_drop_sharp, size:20,), 
              iconColor: Colors.black,
              title: GestureDetector(
                onTap: (){
                  setState(() {
                    text =" Marcelo Queiroz";
                  });
                },
                child: Text("Enviar para $text")),
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
        child: Column(children: [
            carrosel(),
            CardFrete(titulo: "dbfds", subtitulo:" em milhões de produtos a partir de R\$79"),
            CardAssinatura(titulo: "assine por..."),
                    Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            botaocategoria(
              iconeTipo: Icons.abc_outlined, 
              ),

              SizedBox( width: 10,),

        

            botaocategoria(
              iconeTipo: Icons.access_alarm_outlined, 
              ),

              SizedBox( width: 10,),

             botaocategoria(
              iconeTipo: Icons.access_alarm_outlined, 
              ),

              SizedBox( width: 10,),

              botaocategoria(
              iconeTipo: Icons.access_alarm_outlined, 
              ),

              SizedBox( width: 10,),

              ],
          ),
        ])
      ),
    );
  }
}
