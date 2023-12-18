import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/controller/home_controller.dart';
import 'package:watchhub1/views/cart/cartscreen.dart';
import 'package:watchhub1/views/category/categoryscreen.dart';
import 'package:watchhub1/views/home_screen/home_screen.dart';
import 'package:watchhub1/views/profile/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    //init home controller
    var controller=Get.put(HomeController());
    var navitems=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: account),
    ];

    var navbody=[
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body:Column(
        children: [Obx(() => Expanded(child: navbody.elementAt(controller.currentNavIndex.value)),)],) 
      ,
      bottomNavigationBar:Obx(()=> BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
        selectedItemColor: redColor,
        selectedLabelStyle: TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        items: navitems,
        onTap: (value){
          controller.currentNavIndex.value=value;
        },),
    ));
  }
}