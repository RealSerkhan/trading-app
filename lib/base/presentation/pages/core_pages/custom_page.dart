import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({super.key, this.appBar, this.body, this.bottom});
  final Widget? appBar;
  final Widget? Function(Size)? body;
  final Widget? bottom;

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  Size size = Size.zero;

  @override
  void initState() {
    super.initState();
    // Add a post-frame callback to access the size after the layout is done
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  void _afterLayout(_) {
    size = _getSize() ?? Size.zero;
    setState(() {});
  }

  Size? _getSize() {
    final RenderBox? renderBox = (widget.appBar?.key as GlobalKey?)
        ?.currentContext
        ?.findRenderObject() as RenderBox?;
    return renderBox?.size;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                  child: widget.body?.call(size) ?? const SizedBox()),
              Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: widget.appBar ?? const SizedBox.shrink()),
            ],
          ),
        ),
        widget.bottom ?? const SizedBox.shrink()
      ],
    );
  }
}
