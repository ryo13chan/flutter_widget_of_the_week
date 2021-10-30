// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_view_model.dart';

class WidgetListPage extends StatelessWidget {
  const WidgetListPage({Key? key}) : super(key: key);

  static const path = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WidgetListViewModel>(
      create: (_) => WidgetListViewModel()..fetchWidgetData(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget of the Week'),
          actions: [],
        ),
        body: const Center(
          child: WidgetList(),
        ),
      ),
    );
  }
}
