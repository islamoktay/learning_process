import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/main.dart';
import 'package:flutter_navigator/orange_page.dart';

class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
            builder: (context) => AnaSayfa(),
          );
        } else if (defaultTargetPlatform == TargetPlatform.android) {
          return MaterialPageRoute(
            builder: (context) => AnaSayfa(),
          );
        } else {
          return MaterialPageRoute(
            builder: (context) => AnaSayfa(),
          );
        }
      case '/orangePage':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
            builder: (context) => OrangePage(),
          );
        } else if (defaultTargetPlatform == TargetPlatform.android) {
          return MaterialPageRoute(
            builder: (context) => OrangePage(),
          );
        } else {
          return MaterialPageRoute(
            builder: (context) => OrangePage(),
          );
        }
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('404'),
                  ),
                  body: Center(
                    child: Text('Sayfa bulunamadı'),
                  ),
                ));
    }
  }
}
