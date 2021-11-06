// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/app_theme.dart';

class WidgetDetailCode extends StatelessWidget {
  final String code;
  const WidgetDetailCode(this.code, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HighlightView(
      code.replaceAll('`', ''),
      language: 'dart',
      theme: Provider.of<AppTheme>(context).buildHighlightTheme(),
      padding: const EdgeInsets.all(12),
      textStyle: const TextStyle(
        fontFamily: 'My awesome monospace font',
      ),
    );
  }
}
