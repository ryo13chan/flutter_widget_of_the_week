// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_page.dart';

class WidgetListTile extends StatelessWidget {
  final FlutterWidget widget;

  const WidgetListTile(this.widget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Image.network('https://i.ytimg.com/vi/${widget.videoId}/default.jpg'),
      title: Text(widget.title),
      subtitle: Text(widget.description),
      onTap: () => Navigator.pushNamed(context, WidgetDetailPage.path,
          arguments: WidgetDetailArguments(widget.id, widget.title)),
    );
  }
}
