import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class botaocategoria extends StatefulWidget {
  const botaocategoria({Key? key, required this.iconeTipo}) : super(key: key);
  final IconData iconeTipo;
  @override
  State<botaocategoria> createState() => _botaocategoriaState();

}

class _botaocategoriaState extends State<botaocategoria> {
  bool selecionado = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          selecionado = !selecionado 
        },)
      }, 
      child: Container(
       padding: EdgeInsets.all(18),
       decoration: BoxDecoration(
       color: selecionado ? Color.fromARGB(255, 245, 212, 21) : Colors.white,
       borderRadius: BorderRadius.circular(100),
       ),
       child: Icon(
        widget.iconeTipo,
        size: 20,
        color: Colors.black,
       ),
     ),  
   );
  }
}