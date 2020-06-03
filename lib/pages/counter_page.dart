import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget{
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
            Text(
              '0',
              style: TextStyle(fontSize: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FlatButton.icon(
                onPressed: null, 
                icon: Icon(Icons.add), 
                label: Text('Add'),
              ),
              FlatButton.icon(
                onPressed: null, 
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