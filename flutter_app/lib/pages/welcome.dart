import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<String> images = [
    "https://s2.best-wallpaper.net/wallpaper/iphone/1902/Soldier-robot-creative-picture_iphone_750x1334.jpg",
    "https://i.pinimg.com/originals/63/d6/fa/63d6facfd5fdcef875d5337c8fd98740.jpg",
    "https://papers.co/wallpaper/papers.co-az53-transfromers-robot-film-illustration-art-41-iphone-wallpaper.jpg",
    "https://r1.ilikewallpaper.net/iphone-wallpapers/download/26018/Ironman-Dark-Figure-Hero-Art-Avengers-iphone-wallpaper-ilikewallpaper_com.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        viewportFraction: 0.8,
        scale: 0.9,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
