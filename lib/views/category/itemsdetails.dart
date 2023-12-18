import 'package:flutter/material.dart';
import 'package:watchhub1/consts/colors.dart';
import 'package:watchhub1/consts/consts.dart';

class ItemsDetails extends StatelessWidget {
  final String? title;

  const ItemsDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: lightGrey,

      appBar: AppBar(
        title:title!.text.color(darkFontGrey).fontFamily(bold).make() ,
        actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.share)),
        IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_outline)),
      ]),
      body: Container(),
    );
  }
}