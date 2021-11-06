// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:markdown_widget/config/highlight_themes.dart';
import 'package:markdown_widget/config/style_config.dart';

class AppTheme extends ChangeNotifier {
  AppTheme() : _isDark = false;

  bool get isDark => _isDark;

  bool _isDark;

  ThemeData buildTheme() => _isDark ? ThemeData.dark() : ThemeData.light();
  Map<String, TextStyle> buildHighlightTheme() =>
      _isDark ? a11yDarkTheme : a11yLightTheme;
  Map<String, dynamic> buildMarkdownTheme() =>
      _isDark ? MarkdownTheme.darkTheme : MarkdownTheme.lightTheme;

  void changeMode() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
