import 'package:flutter/material.dart';

import 'package:components/src/pages/alert.dart';
import 'package:components/src/pages/avatar.dart';
import 'package:components/src/pages/card.dart';
import 'package:components/src/pages/home.dart';
import 'package:components/src/pages/animated.dart';
import 'package:components/src/pages/inputs.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated': (BuildContext context) => AnimatedPage(),
    'inputs': (BuildContext context) => InputPage(),
  };
}
