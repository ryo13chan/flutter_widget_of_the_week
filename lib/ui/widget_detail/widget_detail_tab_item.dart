// Flutter imports:
import 'package:flutter/material.dart';

class WidgetDetailTabItem extends StatelessWidget {
  final TabInfo tab;
  final String selectedTab;
  const WidgetDetailTabItem(this.tab, this.selectedTab, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(tab.icon),
        Container(
          padding: const EdgeInsets.only(
            bottom: 5,
          ),
          decoration: tab.key == selectedTab
              ? BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).textTheme.bodyText1!.color!,
                      width: 1.0,
                    ),
                  ),
                )
              : null,
          child: Text(tab.label),
        ),
      ],
    );
  }
}

class TabInfo {
  String key;
  IconData icon;
  String label;
  TabInfo(this.key, this.icon, this.label);
}
