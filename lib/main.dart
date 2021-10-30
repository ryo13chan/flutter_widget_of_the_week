// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/route_generator.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_page.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget of the Week',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteGenerator.initialRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
