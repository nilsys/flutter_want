import 'package:flutter/cupertino.dart';

SliverList singleSliverList(Widget child) {
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return child;
    }, childCount: 1),
  );
}

SliverToBoxAdapter singleSliverWidget(Widget widget) {
  return SliverToBoxAdapter(
    child: widget,
  );
}
