import 'package:flutter/material.dart';

class CampoPesquisa extends StatelessWidget {
  const CampoPesquisa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 71,
      child: TextField(            
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(top: 20),
                filled: true,
                fillColor: Colors.white,
                hintText: "",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
    ),
      ),
    );
  }
}