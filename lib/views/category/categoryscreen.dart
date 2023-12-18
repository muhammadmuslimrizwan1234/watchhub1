import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/consts/lists.dart';
import 'package:watchhub1/views/category/categorydetail.dart';
import 'package:watchhub1/widgets_common/bg_widget.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bdWidget(
child:Scaffold(
  appBar: AppBar(
title: categories.text.fontFamily(bold).white.make(),

  ),
  body: Container(
    padding: const EdgeInsets.all(12),
    child: GridView.builder(
      shrinkWrap: true,
      itemCount: 9,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing: 8,mainAxisExtent: 200),
      itemBuilder: (context,index){
        return Column(
          children: [
            Image.asset(
CategoryImages[index],
height: 100,
width: 200,
fit:BoxFit.cover,
            ),
10.heightBox,
Categorylist[index].text.color(darkFontGrey).align(TextAlign.center).make(),
            
          ],
        ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() { 
          Get.to(()=>categoryDetails(title: Categorylist[index]));
        });
      }),
  ),
)
    );
  }
}