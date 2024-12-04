import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(66, 238, 126, 1),
                Color.fromRGBO(141, 249, 179, 1),

              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Hello Vinay !')
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}