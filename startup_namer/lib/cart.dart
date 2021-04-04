
import 'package:flutter/material.dart';
import 'package:startup_namer/provider/counter.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Number(),
                Button()
              ],
            ),
          ),
        )
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Text(
        '${context.watch<CartCounter>().count}' // 需要引入provider包才能有watch方法
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: () => context.read<CartCounter>().increment(),
           child: Text('递增'),
          ),
    );
  }
}