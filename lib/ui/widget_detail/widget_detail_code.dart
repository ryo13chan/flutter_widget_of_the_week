// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_markdown/flutter_markdown.dart';

class WidgetDetailCode extends StatelessWidget {
  final String code;
  const WidgetDetailCode(this.code, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Markdown(
        selectable: true,
        styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
            .copyWith(textScaleFactor: 1),
        data: code,
      ),
    );
  }
}
