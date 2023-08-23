import 'package:flutter/material.dart';

class SeenearBaseScaffold extends StatelessWidget {
  final Widget child;

  const SeenearBaseScaffold({super.key, required this.child});



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
            child: child,
          ),
        ),
      ),
    );
  }
}
