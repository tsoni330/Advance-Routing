import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_advance/Router/Paths.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Screen 1",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go(
                      Path.screen2,
                  );
                },
                child: Container(
                  child: Text("Go to 2"),
                ))
          ],
        ),
      ),
    );
  }
}
