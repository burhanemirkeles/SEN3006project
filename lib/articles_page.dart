import 'package:flutter/material.dart';


class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('SelfCare'),
        ),
      ),
      body: Center(child: Text('Articles'),),

    );
  }
}

