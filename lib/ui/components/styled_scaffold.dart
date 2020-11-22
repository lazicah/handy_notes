import 'package:handy_notes/ui/components/scrollables/styled_scroll_parent.dart';
import 'package:flutter/material.dart';

class StyledScaffold extends StatefulWidget {
  final Widget body;
  final Widget appBarTitle;
  final FloatingActionButton fab;
  final bool pinned;
  final List<Widget> appBarActions;
  final bool showRightPanel;
  final Widget rightPanel;

  const StyledScaffold({
    this.body,
    this.appBarTitle,
    this.fab,
    this.appBarActions,
    this.pinned = true,
    this.showRightPanel = false,
    this.rightPanel,
  });

  @override
  StyledScaffoldState createState() => StyledScaffoldState();
}

class StyledScaffoldState extends State<StyledScaffold> {
  ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    //widget.key = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(StyledScaffold oldWidget) {
    if (oldWidget != widget) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      endDrawer: Drawer(
        child: widget.rightPanel,
      ),
      floatingActionButton: widget.fab,
      body: ScrollParent(
        axis: Axis.vertical,
        controller: scrollController,
        barSize: 15,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              title: widget.appBarTitle,
              pinned: widget.pinned,
              toolbarHeight: 50,
              actions: widget.appBarActions,
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: widget.body,
              ),
            )
          ],
        ),
      ),
    );
  }
}
