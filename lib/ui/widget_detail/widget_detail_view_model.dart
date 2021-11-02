// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_tab_item.dart';

class WidgetDetailViewModel extends ChangeNotifier {
  WidgetDetailViewModel(this.id);
  String? id;

  FlutterWidget? widget;
  FlutterWidget? previousWidget;
  FlutterWidget? nextWidget;
  final List<TabInfo> tabs = [
    TabInfo(
      "code",
      Icons.code,
      "コード",
    ),
    TabInfo(
      "description",
      Icons.book,
      "概要",
    ),
  ];
  String? selectedTab = "code";

  Future<void> fetchWidgetData() async {
    String jsonData =
        await rootBundle.loadString('json/flutter_widget_of_the_week.json');
    final List jsonResponse = json.decode(jsonData);

    String codeData = await rootBundle.loadString('md/code/$id.md');
    String descriptionData =
        await rootBundle.loadString('md/description/$id.md');

    final previousWidget = jsonResponse.firstWhere(
        (data) => data['id'] == (int.parse(id!) - 1).toString(),
        orElse: () => null);
    if (previousWidget != null) {
      final String id = previousWidget['id'];
      final String title = previousWidget['title'];
      final String subtitle = previousWidget['subtitle'];
      final String videoId = previousWidget['videoId'];

      this.previousWidget = FlutterWidget(id, title, subtitle, videoId, "", "");
    }

    final widget =
        jsonResponse.firstWhere((data) => data['id'] == id, orElse: () => null);
    if (widget != null) {
      final String id = widget['id'];
      final String title = widget['title'];
      final String subtitle = widget['subtitle'];
      final String videoId = widget['videoId'];
      final String code = codeData;
      final String description = descriptionData;

      this.widget =
          FlutterWidget(id, title, subtitle, videoId, code, description);
    }

    final nextWidget = jsonResponse.firstWhere(
        (data) => data['id'] == (int.parse(id!) + 1).toString(),
        orElse: () => null);
    if (nextWidget != null) {
      final String id = nextWidget['id'];
      final String title = nextWidget['title'];
      final String subtitle = nextWidget['subtitle'];
      final String videoId = nextWidget['videoId'];

      this.nextWidget = FlutterWidget(id, title, subtitle, videoId, "", "");
    }
    notifyListeners();
  }

  void setSelectedTab(String tab) {
    selectedTab = tab;
    notifyListeners();
  }

  bool isSelectedCode() {
    return selectedTab == "code";
  }

  bool isSelectedDescription() {
    return selectedTab == "description";
  }
}
