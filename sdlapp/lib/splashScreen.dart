import 'package:flutter/material.dart';
import 'package:sdlapp/widget_ring_animator.dart';

import 'homescreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation after 5 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to HomeScreen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0C0B),
      body: Center(
        // Your WidgetRingAnimator and AvatarGlow widgets go here
        child:WidgetRingAnimator(
          size: 120,
          ringIcons: const [
            'assets/store.png',
            'assets/product.png',
            'assets/cart.png',
            'assets/rupee.png',
            'assets/delivery.png',
          ],
          ringIconsSize: 3,
          ringIconsColor: Colors.grey[200] ?? Colors.grey,
          ringAnimation: Curves.linear,
          ringColor: Colors.green,
          reverse: false,
          ringAnimationInSeconds: 5, // Adjusted for the 5-second delay
          child: Container(
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assets/app_logo.png',
                  color: Colors.green,
                  height: 65,
                ),
                radius: 45.0,
              ),
            ),
          ),
          navigateToHomeScreen: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()), // Navigate to HomeScreen
            );
          },
        ),
      ),
    );
  }
}
