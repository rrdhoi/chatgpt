import 'package:chatgpt/theme.dart';
import 'package:flutter/material.dart';

class UserQuestionWidget extends StatelessWidget {
  final String question;

  const UserQuestionWidget({required this.question, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: kBg100Color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              question,
              style: kWhiteText.copyWith(fontSize: 16, fontWeight: kRegular),
            ),
          ),
        ),
        const SizedBox(width: 12),
        ClipOval(
          child: Material(
            color: Colors.deepOrangeAccent,
            child: SizedBox(
              height: 32,
              width: 32,
              child: Center(
                child: Text(
                  "U",
                  style: kWhiteText.copyWith(
                    fontWeight: kSemiBold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
