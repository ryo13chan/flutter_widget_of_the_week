// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';

class WidgetListViewModel extends ChangeNotifier {
  List<FlutterWidget>? widgets;

  Future<void> fetchWidgetData() async {
    String jsonData =
        await rootBundle.loadString('json/flutter_widget_of_the_week.json');
    final List jsonResponse = json.decode(jsonData);

    final List<FlutterWidget> widgets = jsonResponse.map((data) {
      final String id = data['id'];
      final String title = data['title'];
      final String subtitle = data['subtitle'];
      final String videoId = data['videoId'];
      return FlutterWidget(id, title, subtitle, videoId, "", "");
    }).toList();

    this.widgets = widgets;
    notifyListeners();
  }
}
