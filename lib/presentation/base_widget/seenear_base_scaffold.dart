import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

import '../../const/seenear_path.dart';

class SeenearBaseScaffold extends StatefulWidget {
  final Widget child;
  final double? padding;

  const SeenearBaseScaffold({super.key, required this.child, this.padding});

  @override
  State<SeenearBaseScaffold> createState() => _SeenearBaseScaffoldState();
}

class _SeenearBaseScaffoldState extends State<SeenearBaseScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: SeenearColor.grey50,
              selectedItemColor: SeenearColor.blue60,
              selectedFontSize: 14,
              unselectedFontSize: 14,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(label: '검색1',icon: Icon(Icons.search),),
                BottomNavigationBarItem(label: '검색2',icon: Icon(Icons.search),),
                BottomNavigationBarItem(label: '검색3',icon: Icon(Icons.search),),
              ],
              onTap: (index) {
                // Get.offNamed해야할듯..?
                setState(() {
                  _selectedIndex = index;
                });
                Get.toNamed(SeenearPath.SEARCH);
              },
            ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.padding ?? 0.0),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
