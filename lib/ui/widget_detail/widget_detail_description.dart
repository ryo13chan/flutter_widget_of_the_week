// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:markdown_widget/markdown_widget.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/app_theme.dart';

class WidgetDetailDescription extends StatelessWidget {
  final String description;
  const WidgetDetailDescription(this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: MarkdownGenerator(
          data: description,
          styleConfig: StyleConfig(
            markdownTheme: Provider.of<AppTheme>(context).buildMarkdownTheme(),
          ),
        ).widgets!,
      ),
    );
  }
}
