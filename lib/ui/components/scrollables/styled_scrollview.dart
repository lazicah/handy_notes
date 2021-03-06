import 'package:handy_notes/ui/components/scrollables/styled_scroll_parent.dart';
import 'package:flutter/material.dart';

class StyledScrollView extends StatefulWidget {
  final double contentSize;
  final Axis axis;
  final Color trackColor;
  final Color handleColor;
  final Widget child;
  final double barSize;

  StyledScrollView({
    Key key,
    @required this.child,
    this.contentSize,
    this.axis = Axis.vertical,
    this.trackColor,
    this.handleColor,
    this.barSize,
  }) : super(key: key);

  @override
  _StyledScrollViewState createState() => _StyledScrollViewState();
}

class _StyledScrollViewState extends State<StyledScrollView> {
  ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(StyledScrollView oldWidget) {
    if (oldWidget.child != widget.child) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ScrollParent(
      contentSize: widget.contentSize,
      axis: widget.axis,
      controller: scrollController,
      barSize: widget.barSize ?? 12,
      trackColor: widget.trackColor,
      handleColor: widget.handleColor,
      child: SingleChildScrollView(
        scrollDirection: widget.axis,
        physics: AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        child: widget.child,
      ),
    );
  }
}
