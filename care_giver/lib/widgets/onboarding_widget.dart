import 'package:flutter/material.dart';

class onBoardingWidget extends StatelessWidget {
  onBoardingWidget({ Key? key , required this.body, required this.picture,required this.controller}) : super(key: key);
  final String body;
  final String picture; 
  PageController controller;
  @override
  Widget build(BuildContext context) {
    return Card(
      child : Column(
        children: [
          ElevatedButton(
            child: const Text('Skip'),
            onPressed: (){
              // navigate.push to a new page
            },
          ),
          Image.asset(picture),
          Text(body),
          ElevatedButton(
            child: const Text('Next'),
            onPressed: (){
              int curpage = controller.page!.toInt();
              if (curpage ==0 ){
                controller.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.ease);
              }
              else if (curpage == 1 ){
                controller.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.ease);
              }
              else {
                // navigater.push to a new page
              }
            },
          ),
        ],
      ),
    );
  }
}