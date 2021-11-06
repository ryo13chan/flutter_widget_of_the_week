// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/app_theme.dart';
import 'package:flutter_widget_of_the_week/route_generator.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget of the Week',
      theme: Provider.of<AppTheme>(context).buildTheme(),
      initialRoute: RouteGenerator.initialRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
