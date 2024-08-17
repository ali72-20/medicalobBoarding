import 'package:flutter/material.dart';
import 'package:medical1/constants%20/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onBoardinglist.dart';
import 'onBordingItemView.dart';

class onBordingView extends StatefulWidget {
  const onBordingView({super.key});

  @override
  State<onBordingView> createState() => _onBardingViewState();
}

class _onBardingViewState extends State<onBordingView> {
  final controller = onBoardingList();
  late final pageController;
  bool isFinalPage = false;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .9,
            child: PageView.builder(
              itemCount: controller.list.length,
              onPageChanged: (index) {
                setState(() {
                  isFinalPage = index == controller.list.length - 1;
                });
              },
              controller: pageController,
              itemBuilder: (context, index) {
                return onBoardingItemView(entity: controller.list[index]);
              },
            ),
          ),
          isFinalPage ? const StartButton():SlideIndicator(controller: pageController,)
        ],
      ),
    );
  }
}


class SlideIndicator extends StatelessWidget {
   SlideIndicator({super.key, required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return   Container(
      child: SmoothPageIndicator(
        controller:controller ,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.white,

        ),
      ),
    );
  }
}


class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       onPressed: (){

       },
      style: ElevatedButton.styleFrom(
        elevation: 8,
        backgroundColor: AppColors.kPrimaryColor
      ), child: const Text("Let's start", style: TextStyle(color: Colors.white),),
    );
  }
}
