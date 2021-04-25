import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class OnBoardingScreen extends StatelessWidget {
  final pages = [
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/1.png',
        title: 'Screen 1',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'assets/images/2.png',
        title: 'Screen 2',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'assets/images/3.png',
        title: 'Screen 3',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF0097A7),
        imageAssetPath: 'assets/images/4.png',
        title: 'Screen 4',
        body: 'Share your ideas with the team',
        doAnimateImage: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          // Navigator.push(context, MaterialPageRoute(builder: ))
          // // _globalKey.currentState.showSnackBar(SnackBar(
          // //   content: Text("Skip clicked"),
          // ));
        },
        finishCallback: () {
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Finish clicked"),
          // ));
        },
      ),
    );
  }
}
