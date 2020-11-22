import 'package:handy_notes/ui/components/scrollables/styled_scroll_parent.dart';
import 'package:flutter/material.dart';

class StyledCustomScrollView extends StatefulWidget {
  final double contentSize;
  final Axis axis;
  final Color trackColor;
  final Color handleColor;
  final List<Widget> slivers;

  const StyledCustomScrollView({Key key, this.contentSize, this.axis, this.trackColor, this.handleColor, this.slivers}) : super(key: key);
  @override
  _StyledCustomScrollViewState createState() => _StyledCustomScrollViewState();
}

class _StyledCustomScrollViewState extends State<StyledCustomScrollView> {
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
  void didUpdateWidget(StyledCustomScrollView oldWidget) {
    if (oldWidget.slivers.length != widget.slivers.length) {
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
      barSize: 12,
      trackColor: widget.trackColor,
      handleColor: widget.handleColor,
      child: CustomScrollView(
        scrollDirection: widget.axis,
        physics: AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        slivers: widget.slivers,
      ),
    );
  }
}