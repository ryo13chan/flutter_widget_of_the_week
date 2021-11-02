// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_page.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_page.dart';

class RouteGenerator {
  static const initialRoute = WidgetListPage.path;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WidgetListPage.path:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const WidgetListPage(),
        );
      case WidgetDetailPage.path:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => WidgetDetailPage(),
        );
      default:
        throw const RouteException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
