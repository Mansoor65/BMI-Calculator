import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interPretation});
  final String bmiResult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiResultNumberStyle,
                    ),
                    Text(
                      interPretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
          ),
          BottomButton(
              ButtonTitle: 'RE-Calculate',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
