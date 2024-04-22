import 'package:flutter/material.dart';

import 'ui/pages/error_page.dart';
import 'ui/pages/main_page.dart';

PageRoute _materialPageRoute(String? routeName, Widget viewToShow, Map<String, dynamic>? arguments) {
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName, arguments: arguments),
    builder: (_) => viewToShow,
  );
}

Route<dynamic> makeRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return _materialPageRoute(settings.name, const MainPage(), null);
    default:
      return _materialPageRoute(settings.name, const ErrorPage(), null);
  }
}
