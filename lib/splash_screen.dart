import 'package:entity/screens/Polygon.dart';
import 'package:entity/utils/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 2), () {
      nextPageAndRemovePrevious(context, page: const PolygonPage());
    });
  }
}
