import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watchhub1/consts/consts.dart';

Widget buildIndicator({activeindex1,list}) => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect:SwapEffect(dotWidth: 15, activeDotColor:redColor,dotColor: Colors.black),
        activeIndex: activeindex1,
        count: list.length,
      );

  void animateToSlide(int index) => CarouselController().animateToPage(index);
  
