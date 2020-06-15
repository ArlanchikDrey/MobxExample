import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/store/counter/counter.dart';

class CounterPage extends StatelessWidget{
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: TextStyle(fontSize: 30.0),
            ),
            Observer(
              builder: (_) => Text(
              '${counter.value}',
              style: TextStyle(fontSize: 30.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FlatButton.icon(
                onPressed: counter.increment, 
                icon: Icon(Icons.add), 
                label: Text('Add'),
              ),
              FlatButton.icon(
                onPressed: counter.decrement, 
                icon: Icon(Icons.remove), 
                label: Text('Remove'),
              ),
            ],) 
          ],
        ),
      ),
    );
  }

}