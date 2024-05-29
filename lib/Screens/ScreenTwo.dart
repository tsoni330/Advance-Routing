import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_advance/Router/Paths.dart';

class ScreenTwo extends StatelessWidget {
  String name;
   ScreenTwo({required this.name,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Screen 2 ${name}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  context.goNamed(
                      Path.screen3Name,
                    queryParameters: {
                        "name":"tussi",
                      "email":"coderskickass@gmail.com",
                      "no":"9671515251"
                    }
                  );
                },
                child: Container(
                  child: Text("Go to 3"),
                ))
          ],
        ),
      ),
    );
  }
}
