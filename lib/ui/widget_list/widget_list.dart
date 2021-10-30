// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_tile.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_view_model.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetListViewModel>(
      builder: (context, model, child) {
        List<FlutterWidget>? widgets = model.widgets;
        if (widgets == null) {
          return const CircularProgressIndicator();
        }
        return ListView(
          children: widgets.map((widget) => WidgetListTile(widget)).toList(),
        );
      },
    );
  }
}
