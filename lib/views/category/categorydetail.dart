import 'package:get/get.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/consts/lists.dart';
import 'package:watchhub1/views/category/itemsdetails.dart';
import 'package:watchhub1/widgets_common/bg_widget.dart';

class categoryDetails extends StatelessWidget {
  final String? title;

  const categoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return bdWidget(
      child: Scaffold(
        appBar: AppBar(
title: title!.text.fontFamily(bold).white.make(),
        ),
body: Container(
  padding: EdgeInsets.all(12),
  child: Column(children: [
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child:
    Row(
      children: List.generate(6, (index) => womencollection.text.fontFamily(semibold).size(12).color(darkFontGrey).makeCentered().box.white.rounded.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
    ),
    ),
20.heightBox,
//item Container
Expanded(child: 

GridView.builder(
  physics: const BouncingScrollPhysics(),
  shrinkWrap: true,
  itemCount: 6,

  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,crossAxisSpacing: 8),
  itemBuilder: (context,index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Image.asset(
                                        featureitem[index],
                                        width: 200,
                                        height: 150,


                                        fit: BoxFit.cover,),
                                      featureitemlist[index].text.fontFamily(
                                          semibold).color(darkFontGrey).make(),
                                      10.heightBox,
                                      featureitemprice[index].text.color(
                                          redColor).fontFamily(bold)
                                          .size(16)
                                          .make(),
                                    ],
                                  ).box.white
                                      .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                      .roundedSM
                                      .outerShadowSm
                                      .padding(const EdgeInsets.all(12))
                                      .make().onTap(() {
                                        Get.to(()=> ItemsDetails(title: featureitemlist[index]));
                                      });}),
                            )]))));
                            
  }} 