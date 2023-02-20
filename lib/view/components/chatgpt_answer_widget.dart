import 'package:chatgpt/theme.dart';
import 'package:flutter/material.dart';

class ChatGptAnswerWidget extends StatelessWidget {
  final String answer;

  const ChatGptAnswerWidget({required this.answer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: SizedBox(
              height: 32,
              width: 32,
              child: Image.asset("assets/chatgpt_logo.png")),
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: kBg100Color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              answer.toString().trim(),
              style: kWhiteText.copyWith(fontSize: 16, fontWeight: kRegular),
            ),
          ),
        ),
      ],
    );
  }
}
