import 'dart:js';
import 'dart:ui';

import 'package:go_router/go_router.dart';
import 'package:routing_advance/Router/Paths.dart';
import 'package:routing_advance/Screens/ErrorScreen.dart';
import 'package:routing_advance/Screens/ScreenOne.dart';
import 'package:routing_advance/Screens/ScreenThree.dart';
import 'package:routing_advance/Screens/ScreenTwo.dart';

class RouteConfiguration{
  static GoRouter router = GoRouter(
    initialLocation: Path.screen1,
      routes: [
        GoRoute(
          path: Path.screen1,
          name: Path.screen1Name,
          builder: (context,state){
            return ScreenOne();
          }
        ),
        GoRoute(
            path: Path.screen2,
            name: Path.screen2Name,
            builder: (context,state){
              String? name = state.pathParameters['name'];
              return ScreenTwo(name:name!);
            },
        ),
        GoRoute(
            path: Path.screen3,
            name: Path.screen3Name,
            builder: (context,state){
              return ScreenThree(state.uri.queryParameters);
            },
          redirect: (context,state){
              if(state.uri.queryParameters['name']=="tussi"){
                return Path.screen1Name;
              }
          }
        ),
      ],
    errorBuilder: (context,state){
        return ErrorScreen();
    },
  );

}