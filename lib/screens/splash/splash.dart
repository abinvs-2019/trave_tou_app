import 'package:flutter/cupertino.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///Added a dummy image to show how the app theme shuld look like
    ///Please open asset folder to see the preview of the color theme of the app should be
    return Container(
      child: Image.asset(
        'assets/images/splash.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
