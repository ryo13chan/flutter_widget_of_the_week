// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_view_model.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/youtube_player_widget.dart';

class WidgetDetailPage extends StatelessWidget {
  const WidgetDetailPage({Key? key}) : super(key: key);

  static const path = '/widget_detail';

  @override
  Widget build(BuildContext context) {
    final WidgetDetailArguments args =
        ModalRoute.of(context)!.settings.arguments as WidgetDetailArguments;
    return ChangeNotifierProvider<WidgetDetailViewModel>(
      create: (_) => WidgetDetailViewModel(args.id)..fetchWidgetData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
          actions: [],
        ),
        body: Consumer<WidgetDetailViewModel>(
          builder: (context, model, child) {
            FlutterWidget? widget = model.widget;
            if (widget == null) {
              return const CircularProgressIndicator();
            }
            return Column(
              children: [
                YoutubePlayerWidget(widget.videoId),
                // TODO: タブ
              ],
            );
          },
        ),
      ),
    );
  }
}

class WidgetDetailArguments {
  final String id;
  final String title;
  WidgetDetailArguments(this.id, this.title);
}
