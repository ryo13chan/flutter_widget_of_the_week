// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/app_theme.dart';
import 'package:flutter_widget_of_the_week/widgets/theme_switch.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const Header(this.title, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    return AppBar(
      title: Text(title),
      actions: [
        ThemeSwitch(theme.isDark, theme.changeMode),
      ],
    );
  }
}
