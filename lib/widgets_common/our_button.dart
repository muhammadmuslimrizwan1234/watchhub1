import 'package:watchhub1/consts/consts.dart';
Widget OurButton({color,scolor,fcolor,String? title,onpress,textcolor}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: fcolor,

      elevation: 6.0,  // Elevation
      shadowColor:scolor, // Shadow Color
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
    ),
    onPressed: onpress,
    
    child: title!.text.color(textcolor).fontFamily(bold).make());
}