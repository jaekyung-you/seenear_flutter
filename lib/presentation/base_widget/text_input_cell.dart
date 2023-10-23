import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class TextInputCell extends StatefulWidget {
  final TextEditingController textEditingController;
  final Function() onTapComplete; // '등록' 버튼 클릭

  const TextInputCell({super.key, required this.onTapComplete, required this.textEditingController});

  @override
  State<TextInputCell> createState() => _TextInputCellState();
}

class _TextInputCellState extends State<TextInputCell> {
  bool enableButton = false;

  @override
  void initState() {
    super.initState();
    widget.textEditingController.addListener(() {
      String comment = widget.textEditingController.text.trim();
      setState(() {
        enableButton = comment.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: SeenearColor.grey20,
          height: 0.5,
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: widget.textEditingController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 4, left: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      hintText: '댓글을 남겨보세요',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: SeenearColor.grey30,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  widget.onTapComplete();
                },
                child: Container(
                  width: 52,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: enableButton ? SeenearColor.blue60 : SeenearColor.grey10,
                  ),
                  child: const Center(
                    child: Text(
                      '등록',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
