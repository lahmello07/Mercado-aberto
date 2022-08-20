import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class carrosel extends StatefulWidget {
  const carrosel({Key? key}) : super(key: key);

  @override
  State<carrosel> createState() => _carroselState();
}

class _carroselState extends State<carrosel> {

  List imgList = [
  'https://images.unsplash.com/photo-1590083948608-525d75ee5edb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  'https://images.unsplash.com/photo-1566763481246-3d765d357293?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1566764577421-ad670748f51c?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1566764579018-da7fde771fb4?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1566763306929-a936c7856f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
  options: CarouselOptions(height: 300.0,autoPlay: true,),
               items: imgList.map((imagem){
                 return Builder(
                   builder: (BuildContext context){
                     return Image.network(imagem,fit: BoxFit.fill,);
                   },
                 );
               }).toList(),
             );
  }
}