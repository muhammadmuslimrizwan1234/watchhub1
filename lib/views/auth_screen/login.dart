import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/consts/lists.dart';
import 'package:watchhub1/views/auth_screen/signup.dart';
import 'package:watchhub1/views/home_screen/home.dart';
import 'package:watchhub1/widgets_common/applogo_widget.dart';
import 'package:watchhub1/widgets_common/bg_widget.dart';
import 'package:watchhub1/widgets_common/our_button.dart';
import 'package:watchhub1/widgets_common/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bdWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
body: Center(
  child: Column(children: [
(context.screenHeight * 0.1).heightBox,
applogoWidget(),
10.heightBox,
"Log in To $appname".text.white.size(18).fontFamily(bold).make(),
15.heightBox,
Column(
  children: [
    customTextField(title:email,hint1: emailhint),
    customTextField(title: password,hint1: passwordhint),
    Align(
alignment: Alignment.centerRight,
    child: TextButton(onPressed: (){}, child: forgetpassword.text.make())
),
5.heightBox,
OurButton(color:redColor,scolor:Colors.brown ,fcolor:Colors.blue ,title: login, onpress:(){
  Get.to(()=>const Home());
}, textcolor:whiteColor).box.width(context.screenWidth -50).make(),
5.heightBox,
create.text.color(fontGrey).make(),
5.heightBox,
OurButton(color:Colors.amber[200],scolor: Colors.green,fcolor: Colors.blue, title:signup, onpress:(){
  Get.to(()=> const SignUp());
}, textcolor:redColor).box.width(context.screenWidth -50).make(),
10.heightBox,
loginwith.text.color(fontGrey).make(),
5.heightBox,
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:
    List.generate(3, (index) =>Padding( 
      padding:const EdgeInsets.all(8.0),
      child: CircleAvatar(
      radius: 20,
      backgroundColor: lightGrey,
child: Image.asset(SocialIconList[index],width: 30,),
    ))),
)
  ],).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),




  ]),
),
    ));
  }
}