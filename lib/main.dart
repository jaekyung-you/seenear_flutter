import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:seenear/const/define.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/design_system/textfield_with_helper.dart';
import 'package:seenear/data/local/helper_text_type.dart';

import 'const/design_system/empty_view.dart';
import 'const/design_system/rounded_widget.dart';
import 'const/design_system/select_item_cell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  KakaoSdk.init(
    nativeAppKey: Defines.KAKAO_SDK_KEY,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BaseButton(
                buttonText: '선택 완료',
                isDisabled: false,
                onPressed: () {
                  print("선택 완료 누름!!!");
                }),
            TextFieldWithHelperText(
              editingController: textEditingController,
              hintText: '닉네임을 입력해주세요',
              helperTextType:
                  HelperTextType(isError: true, helperText: '닉네임을 입력해주세요!'),
            ),
            RoundedWidget(
              text: '오픈예정',
              bgColor: SeenearColor.blue10,
              fgColor: SeenearColor.blue60,
            ),
            SelectItemCell(text: '서울',),
            EmptyView(
              text: '찜한 축제/행사가 없어요',
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
