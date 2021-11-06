// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:flutter_widget_of_the_week/models/flutter_widget.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_code.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_copy_button.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_description.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_tab_item.dart';
import 'package:flutter_widget_of_the_week/ui/widget_detail/widget_detail_view_model.dart';
import 'package:flutter_widget_of_the_week/ui/widget_list/widget_list_tile.dart';
import 'package:flutter_widget_of_the_week/widgets/header.dart';
import 'package:flutter_widget_of_the_week/widgets/youtube_player.dart';

class WidgetDetailPage extends StatelessWidget {
  const WidgetDetailPage({Key? key}) : super(key: key);

  static const path = '/widget_detail';

  @override
  Widget build(BuildContext context) {
    final WidgetDetailArguments args;
    if (ModalRoute.of(context)?.settings.arguments != null) {
      args =
          ModalRoute.of(context)?.settings.arguments as WidgetDetailArguments;
    } else {
      // 値のべた書きやめる
      args = WidgetDetailArguments("0", "Introducing Widget of the Week!");
    }
    return ChangeNotifierProvider<WidgetDetailViewModel>(
      create: (_) => WidgetDetailViewModel(args.id)..fetchWidgetData(),
      child: Scaffold(
        appBar: Header(args.title),
        body: Consumer<WidgetDetailViewModel>(
          builder: (context, model, child) {
            FlutterWidget? widget = model.widget;
            FlutterWidget? previousWidget = model.previousWidget;
            FlutterWidget? nextWidget = model.nextWidget;
            if (widget == null) {
              return const CircularProgressIndicator();
            }
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 800) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Youtubeプレイヤー
                      Expanded(child: YoutubePlayer(widget.videoId)),
                      SizedBox(
                        width: 500,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // タブ
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: model.tabs.map(
                                  (tab) {
                                    return GestureDetector(
                                      onTap: () =>
                                          model.setSelectedTab(tab.key),
                                      child: WidgetDetailTabItem(
                                          tab, model.selectedTab!),
                                    );
                                  },
                                ).toList(),
                              ),
                              // コード
                              if (model.isSelectedCode()) ...[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: WidgetDetailCopyButton(
                                          copy, widget.code),
                                      margin: const EdgeInsets.only(right: 20),
                                    ),
                                  ],
                                ),
                                WidgetDetailCode(widget.code),
                              ],
                              // 概要
                              if (model.isSelectedDescription()) ...[
                                if (previousWidget != null)
                                  WidgetListTile(previousWidget),
                                if (nextWidget != null)
                                  WidgetListTile(nextWidget),
                                WidgetDetailDescription(widget.description),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return ListView(
                  children: [
                    // Youtubeプレイヤー
                    YoutubePlayer(widget.videoId),
                    // タブ
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: model.tabs.map(
                        (tab) {
                          return GestureDetector(
                            onTap: () => model.setSelectedTab(tab.key),
                            child: WidgetDetailTabItem(tab, model.selectedTab!),
                          );
                        },
                      ).toList(),
                    ),
                    // コード
                    if (model.isSelectedCode()) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: WidgetDetailCopyButton(copy, widget.code),
                            margin: const EdgeInsets.only(right: 20),
                          ),
                        ],
                      ),
                      WidgetDetailCode(widget.code),
                    ],
                    // 概要
                    if (model.isSelectedDescription()) ...[
                      if (previousWidget != null)
                        WidgetListTile(previousWidget),
                      if (nextWidget != null) WidgetListTile(nextWidget),
                      WidgetDetailDescription(widget.description),
                    ]
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  void copy(String text) {
    Clipboard.setData(ClipboardData(text: text.replaceAll('`', '')));
  }
}

class WidgetDetailArguments {
  final String id;
  final String title;
  WidgetDetailArguments(this.id, this.title);
}
