import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  final String data;

  const DummyPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(data,style: TextStyle(fontSize: 30.0,color: Colors.yellow),),
      ),
    );
  }
}
