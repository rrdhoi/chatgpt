import 'package:chatgpt/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: SpinKitThreeBounce(
          color: kWhiteColor,
          size: 18,
        ),
      ),
    );
  }
}
