import 'package:flutter/material.dart';

typedef OnItemBuilder<Item> = Widget Function(
    BuildContext context, Item item, int index);

typedef OnItemSeparatedBuilder = Widget Function(
    BuildContext context, int index);

class PilemList<T> extends StatelessWidget {
  final List<T> items;
  final bool isSeparated;
  final OnItemBuilder<T> itemBuilder;
  final OnItemSeparatedBuilder? separatedBuilder;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final ScrollController? controller;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;
  final int? itemCount;
  const PilemList(this.items,
      {Key? key,
      this.isSeparated = false,
      required this.itemBuilder,
      this.separatedBuilder,
      this.shrinkWrap = false,
      this.physics,
      this.controller,
      this.padding,
      this.scrollDirection = Axis.vertical,
      this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !isSeparated
        ? ListView.builder(
            padding: padding,
            shrinkWrap: shrinkWrap,
            physics: physics,
            controller: controller,
            scrollDirection: scrollDirection,
            itemBuilder: (context, index) =>
                itemBuilder(context, items[index], index),
            itemCount: itemCount ?? items.length,
          )
        : ListView.separated(
            padding: padding,
            shrinkWrap: shrinkWrap,
            physics: physics,
            controller: controller,
            scrollDirection: scrollDirection,
            itemBuilder: (context, index) =>
                itemBuilder(context, items[index], index),
            separatorBuilder: (context, index) => separatedBuilder != null
                ? separatedBuilder!(context, index)
                : const Divider(),
            itemCount: itemCount ?? items.length,
          );
  }
}