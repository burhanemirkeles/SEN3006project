import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:self_care/constants.dart';
import 'package:self_care/reusable_card.dart';

class DataCard extends StatelessWidget {
 DataCard({this.dateData,this.weightData,this.fatRateData,this.bmiData});

  final String dateData;
  final int weightData;
  final int fatRateData;
  final double bmiData;


  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kActiveCardColor,
      cardChild: Row(
        children: [
          Text(dateData,style: kLabelTextStyle.copyWith(fontSize: 18),),
          SizedBox(width: 35,),
          Text(weightData.toString(),style: kLabelTextStyle.copyWith(fontSize: 25),),
          SizedBox(width: 35,),
          Text(fatRateData.toString(),style: kLabelTextStyle.copyWith(fontSize: 25),),
          SizedBox(width: 35,),
          Text(bmiData.toString(),style: kLabelTextStyle.copyWith(fontSize: 25),),
        ],
      ),

    );
  }
}
