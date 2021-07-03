import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/main.dart';
import 'package:flutter_navigator/orange_page.dart';
import 'package:flutter_navigator/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(Widget gidilecekWidget) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => gidilecekWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        builder: (context) => gidilecekWidget,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => gidilecekWidget,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(
          AnaSayfa(),
        );
      case '/orangePage':
        return _routeOlustur(
          OrangePage(),
        );
      case '/yellowPage':
        return _routeOlustur(
          YellowPage(),
        );
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
