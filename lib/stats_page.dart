import 'package:flutter/material.dart';
import 'package:self_care/constants.dart';
import 'package:self_care/reusable_card.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Calories Burned',
                  style: kLabelTextStyle.copyWith(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Steps',
                  style: kLabelTextStyle.copyWith(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
