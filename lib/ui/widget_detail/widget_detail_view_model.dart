// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';

class WidgetDetailViewModel extends ChangeNotifier {
  WidgetDetailViewModel(this.id);
  FlutterWidget? widget;
  String? id;

  Future<void> fetchWidgetData() async {
    String jsonData =
        await rootBundle.loadString('json//flutter_widget_of_the_week.json');
    final List jsonResponse = json.decode(jsonData);

    final widget =
        jsonResponse.firstWhere((data) => data['id'] == id, orElse: () => null);

    if (widget != null) {
      final String id = widget['id'];
      final String title = widget['title'];
      final String description = widget['description'];
      final String videoId = widget['videoId'];

      this.widget = FlutterWidget(id, title, description, videoId);
    }
    notifyListeners();
  }
}
