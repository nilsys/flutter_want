import 'package:flutter/material.dart';

class WidgetUtil {
  static SliverList buildASingleSliver(Widget widget) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return widget;
      }, childCount: 1),
    );
  }

  static SliverGrid buildASingleSliverGrid(Widget widget, int rowCount) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return widget;
      }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: rowCount, childAspectRatio: 0.65, mainAxisSpacing: 3, crossAxisSpacing: 3),
    );
  }
}
