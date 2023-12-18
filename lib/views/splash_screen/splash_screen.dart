import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/views/auth_screen/login.dart';
import 'package:watchhub1/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
    Get.to(()=>const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(child: Column(children: [
        Align(
          alignment:Alignment.topLeft,
          child:Image.asset(icSplashBg,width:225),
        ),
        20.heightBox,
        applogoWidget(),

        15.heightBox,
        appname.text.fontFamily(bold).size(22).white.make(),

        8.heightBox,
        appversion.text.white.make(),

        const Spacer(flex:1),
        credits.text.white.fontFamily(semibold).make(),
        30.heightBox,

        // splash screen completed

        
      ],)),
    );
  }
}