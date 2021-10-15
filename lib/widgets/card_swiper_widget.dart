import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: 300.0,
      child: Swiper(
        itemHeight: _screenSize.height * 0.5,
        itemWidth: _screenSize.width * 0.7,
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network("https://via.placeholder.com/350x150",
          fit: BoxFit.fill,
          ),
          );
        },
        itemCount: 3,
        //pagination: SwiperPagination(),
        //control: SwiperControl(),
      ),
    );
  }
}