import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';


class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'YT Videos',
                  style: kLabelTextStyle.copyWith(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
        
      ],
    ),
    );

  }
}

