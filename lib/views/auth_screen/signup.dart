import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';

import 'package:watchhub1/widgets_common/applogo_widget.dart';
import 'package:watchhub1/widgets_common/bg_widget.dart';
import 'package:watchhub1/widgets_common/our_button.dart';
import 'package:watchhub1/widgets_common/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
bool? isCheck=false;
  
  @override
  Widget build(BuildContext context) {
    return bdWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
body: Center(
  child: Column(children: [
(context.screenHeight * 0.1).heightBox,
applogoWidget(),
10.heightBox,
"Join the $appname".text.white.size(18).fontFamily(bold).make(),
15.heightBox,
Column(
  children: [
    customTextField(title: name,hint1: namehint),
    customTextField(title:email,hint1: emailhint),
    customTextField(title: password,hint1: passwordhint),
    customTextField(title: retypepass,hint1: passwordhint),
    Align(
alignment: Alignment.centerRight,
    child: TextButton(onPressed: (){}, child: forgetpassword.text.make())
),
5.heightBox,
Row(
  children: [
    
    Checkbox(
      checkColor: redColor,
      value: isCheck, onChanged: (newValue){
        setState(() {
          isCheck=newValue;
        });
        
      },),

10.widthBox,
Expanded(child:  RichText(text: const TextSpan(children: 
[
TextSpan(text: "I agree to the",style: TextStyle(
  fontFamily: regular,
  color: fontGrey,
)),
TextSpan(text: terms,style: TextStyle(
  fontFamily: regular,
  color: redColor,
)),
TextSpan(text: " & ",style: TextStyle(
  fontFamily: regular,
  color: fontGrey,
)),
TextSpan(text: privatepolicy,style: TextStyle(
  fontFamily: regular,
  color: redColor,
)),
],
))),
 ],
),
10.heightBox,
OurButton(color: isCheck==true ? redColor:lightGrey,scolor:Colors.brown ,fcolor:Colors.blue ,title: signup, onpress:(){
}, textcolor:whiteColor).box.width(context.screenWidth -50).make(),
10.heightBox,
// wrapping in gesture tab
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  already.text.color(fontGrey).make(),
  login.text.color(redColor).make().onTap(() {
    Get.back();
  })
],),



  ],).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),




  ]),
),
    ));
  }
}
