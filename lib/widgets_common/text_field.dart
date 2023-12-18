import 'package:watchhub1/consts/consts.dart';
Widget customTextField({String? title,String? hint1,controller }){
return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
title!.text.color(redColor).fontFamily(semibold).size(14).make(),
TextFormField(
decoration:InputDecoration(
  hintStyle: 
    TextStyle(
      fontFamily: semibold,
      color: textfieldGrey,
      fontSize: 12,
    ),
  hintText: hint1,
  
  isDense: true,
  fillColor: lightGrey,
  filled: true,
  border: InputBorder.none,
  focusedBorder: OutlineInputBorder(borderSide: (BorderSide(color: redColor)))
),
),
5.heightBox,
  ],

);

}