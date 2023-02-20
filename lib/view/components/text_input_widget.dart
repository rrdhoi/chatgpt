import 'package:chatgpt/theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController textController;
  final VoidCallback onSubmitted;

  const TextInputWidget(
      {required this.textController, required this.onSubmitted, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            margin: const EdgeInsets.only(bottom: 12, left: 12),
            decoration: const BoxDecoration(
              color: kBg100Color,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12), bottom: Radius.circular(12)),
            ),
            child: TextFormField(
              controller: textController,
              minLines: 1,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              style: kWhiteText.copyWith(fontSize: 16),
              decoration: InputDecoration(
                filled: true,
                fillColor: kBg100Color,
                hintText: 'Type in...',
                hintStyle: kWhiteText.copyWith(fontSize: 16),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 12.0),
              ),
              onFieldSubmitted: (_) => onSubmitted,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 48,
          height: 48,
          margin: const EdgeInsets.only(bottom: 12, right: 12),
          decoration:
              const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
          child: GestureDetector(
            onTap: onSubmitted,
            child: const Icon(
              Iconsax.send_24,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
