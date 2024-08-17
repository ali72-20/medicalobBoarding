import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onBoarding/onBordingView.dart';
void main(){
  runApp(const medicalApp());
}

class medicalApp extends StatelessWidget {
  const medicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBordingView(),
    );
  }


}
