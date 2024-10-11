import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const BottomButton(
      // ignore: non_constant_identifier_names
      {super.key,
      // ignore: non_constant_identifier_names
      required this.ButtonTitle,
      required this.onTap});
  // ignore: non_constant_identifier_names
  final String ButtonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            ButtonTitle,
            style: kLargeButtonstyle,
          ),
        ),
      ),
    );
  }
}
