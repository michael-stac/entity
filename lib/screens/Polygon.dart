import 'package:flutter/material.dart';

import '../styles/appcolor.dart';

class PolygonPage extends StatefulWidget {
  const PolygonPage({Key? key}) : super(key: key);

  @override
  State<PolygonPage> createState() => _PolygonPageState();
}

class _PolygonPageState extends State<PolygonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image(
            image: AssetImage("assets/images/back.png"),
          ),
        ),
        title: Text(
          "Polygon",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: AppColor.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Image(
                image: AssetImage("assets/images/note.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
