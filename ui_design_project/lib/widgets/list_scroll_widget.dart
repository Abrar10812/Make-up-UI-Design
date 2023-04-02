import 'package:curved_carousel/curved_carousel.dart';
import 'package:ui_design_project/Models/model1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListScrollWidget extends StatelessWidget {
  final imglist = Model1.bottomImg();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Transform.rotate(
                angle: -0.3,
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff44444c),
                  size: 30,
                ))),


        Expanded(
          flex: 8,
          child: CarouselSlider.builder(
            itemCount: imglist.length,
            itemBuilder: (context, index, Index) {
              return Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(imglist[index].imgurl!),
                      fit: BoxFit.cover,
                    )),
              );
            },
            options: CarouselOptions(
              enableInfiniteScroll: true,
              viewportFraction: 0.35,
              aspectRatio: 5.0,
              scrollDirection: Axis.horizontal,
              height: 80,
              autoPlay: false,
              enlargeCenterPage: true,
            ),
          ),
        ), //Carousel Slider
        
/*        Expanded(child: CurvedCarousel(
          curveScale: -10.0,

          itemBuilder: (_, index) {
            return Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(imglist[index].imgurl!),
                    fit: BoxFit.cover,
                  )),
            );
          },
          itemCount: imglist.length,
        )),*/
        
        Expanded(
            flex: 2,
            child: Transform.rotate(
                angle: 0.3,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xff44444c),
                  size: 30,
                )))
      ],
    );
  }
}