import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  Map<String,dynamic> params;
  ScreenThree(this.params,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Screen 3 ${params['name']}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
