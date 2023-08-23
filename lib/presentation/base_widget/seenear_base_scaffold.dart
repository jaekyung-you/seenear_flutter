import 'package:flutter/material.dart';

class SeenearBaseScaffold extends StatelessWidget {
  final Widget child;
  final double? padding;

  const SeenearBaseScaffold({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding ?? 0.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
