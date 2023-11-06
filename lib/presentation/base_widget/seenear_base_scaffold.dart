import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class SeenearBaseScaffold extends StatefulWidget {
  final Widget child;
  final double? padding;
  final Widget? floatingActionButton;

  const SeenearBaseScaffold({super.key, required this.child, this.padding, this.floatingActionButton});

  @override
  State<SeenearBaseScaffold> createState() => _SeenearBaseScaffoldState();
}

class _SeenearBaseScaffoldState extends State<SeenearBaseScaffold> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          floatingActionButton: widget.floatingActionButton,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: SeenearColor.grey50,
            selectedItemColor: SeenearColor.grey70,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: SeenearColor.grey70,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: SeenearColor.grey50,
            ),
            selectedIconTheme: IconThemeData(
              color: SeenearColor.grey70,
            ),
            unselectedIconTheme: IconThemeData(
              color: SeenearColor.grey50,
            ),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                label: '장날',
                icon: Image.asset(
                  'assets/images/tab_market${_selectedIndex == 0 ? '_selected' : ''}.png',
                  width: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: '축제/행사',
                icon: Image.asset(
                  'assets/images/tab_festival${_selectedIndex == 1 ? '_selected' : ''}.png',
                  width: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: '홈',
                icon: Image.asset(
                  'assets/images/tab_home${_selectedIndex == 2 ? '_selected' : ''}.png',
                  width: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: '이야기방',
                icon: Image.asset(
                  'assets/images/tab_chat${_selectedIndex == 3 ? '_selected' : ''}.png',
                  width: 28,
                ),
              ),
              BottomNavigationBarItem(
                label: '내 정보',
                icon: Image.asset(
                  'assets/images/tab_myInfo${_selectedIndex == 4 ? '_selected' : ''}.png',
                  width: 28,
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              switch (index) {
                case 0:
                  // Get.offAllNamed(SeenearPath.HOME);
                  break;
                case 1:
                  break;
                case 2:
                  // Get.offAllNamed(SeenearPath.SEARCH);
                  break;
                case 3:
                  break;
                case 4:
                  break;
                case 5:
                  break;
              }
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
