import 'package:carousel_slider/carousel_slider.dart';
import 'package:watchhub1/consts/consts.dart';
import 'package:watchhub1/consts/lists.dart';
import 'package:watchhub1/views/home_screen/components/feature.dart';
import 'package:watchhub1/widgets_common/buildIndicator.dart';
import 'package:watchhub1/widgets_common/build_image.dart';
import 'package:watchhub1/widgets_common/homebutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  int activeIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(

        padding: const EdgeInsets.all(12),
        color: fontGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(child: Column(

            children: [

              Container(
                alignment: Alignment.center,
                height: 60,
                color: Color.fromARGB(107, 138, 130, 130),
                child: TextFormField(decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey),

                ),),
              ),
              10.heightBox,
              Expanded(child:
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  // Carousal Start

                  CarouselSlider.builder(
                      carouselController: CarouselController(),
                      itemCount: sliderList.length,
                      itemBuilder: (context, index, realIndex) {
                        final sliderimg = sliderList[index];
                        return buildImage(sliderimg, index);
                      },
                      options: CarouselOptions(
                          height: 150,
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index))),
                  SizedBox(height: 12),
                  buildIndicator(activeindex1: activeIndex, list: sliderList),

                  // Carousal end

                  //two home button
                  10.heightBox,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) =>
                          homeButton(
                            height: context.screenHeight * 0.12,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? todaydeal : flashsale,

                          ))
                  ),
                  // two home button end

                  10.heightBox,

                  // second carousal

                  CarouselSlider.builder(

                      carouselController: CarouselController(),
                      itemCount: secondsliderlist.length,
                      itemBuilder: (context, index, realIndex) {
                        final sliderimg = secondsliderlist[index];
                        return buildImage(sliderimg, index);
                      },
                      options: CarouselOptions(
                          height: 300,
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex2 = index))),
                  SizedBox(height: 12),
                  buildIndicator(
                      activeindex1: activeIndex2, list: secondsliderlist),

                  // second carousal end
                  10.heightBox,
//3 button start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) =>
                        homeButton(
                          height: context.screenHeight * 0.12,
                          width: context.screenWidth / 3.5,
                          icon: index == 0 ? icTopCategories : index == 1
                              ? icBrands
                              : icTopSeller,
                          title: index == 0 ? topcat : index == 1
                              ? brands
                              : topseller,
                        )),
                  ),

                  20.heightBox,
//Feauture Categories

                  Align(
                    alignment: Alignment.centerLeft,
                    child: featurecat.text.color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
// end feature categories


                  20.heightBox,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                    Row(

                      children: List.generate(3, (index) =>
                          Column(
                            children: [
                              featureButton(icon: featurelowerlist[index],
                                  title: featuredTitle1[index]),
                              10.heightBox,
                              featureButton(icon: featureupperlist[index],
                                  title: featuredTitle2[index]),
                            ],
                          ),
                      ).toList(),
                    ),

                  ),
                  //Feature Product Start
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,

                    decoration: const BoxDecoration(
                      color: redColor,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Featured.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,

                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(9, (index) =>
                                  Column(
                                    children: [
                                      Image.asset(
                                        featureitem[index],
                                        width: 180,
                                        height: 150,


                                        fit: BoxFit.cover,),
                                      10.heightBox,
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
                                      EdgeInsets.symmetric(horizontal: 4))
                                      .roundedSM
                                      .padding(const EdgeInsets.all(8))
                                      .make()),
                            )),

                      ],
                    ),
                  ),
                  // Feature item end


                  20.heightBox,

                  // items
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300,),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              smartwatch[index],
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,),
                            const Spacer(),
                            smartlist[index].text.fontFamily(semibold)
                                .color(
                                darkFontGrey)
                                .make(),
                            10.heightBox,
                            smartprice[index].text.color(redColor)
                                .fontFamily(
                                bold).size(16)
                                .make(),
                          ],
                        ).box.white
                            .margin(EdgeInsets.symmetric(horizontal: 4))
                            .roundedSM
                            .padding(const EdgeInsets.all(12))
                            .make();
                      }),
                ]),


              )
              )
            ]
        )
        )
    );
  }
}
