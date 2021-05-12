import 'package:flutter/material.dart';



class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('SelfCare Stats'),
        ),
      ),
      body: Center(child: Text('Stats'),),

    );
  }
}
