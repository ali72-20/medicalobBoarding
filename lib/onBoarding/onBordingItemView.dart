import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical1/onBoarding/onBoardingItemEntity.dart';

import '../constants /colors.dart';

class onBoardingItemView extends StatelessWidget {
    onBoardingItemView({super.key, required this.entity});
   onBoardingItemEntity entity;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: NetworkImage(entity.image),),
          const SizedBox(height: 15,),
          Text(entity.title, style:  const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 32, ),)
        ],
      ),
    );
  }
}
