import 'package:flutter/material.dart';

class MyOtherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter widget demon",
      theme: ThemeData(
        // 主题
        primaryColor: Colors.green[100],
      ),
      home: RouteWithParam(),
    );
  }
}

// 通过声明一个过渡的widget
class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: TextButton(
        child: Text("open new route"),
        onPressed: () {
          // 导航到新路由
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewRoute())); // 由于context是MaterialApp，这个根树widget
          // 需要用子树的widget的context,
        },
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class RouteWithParam extends StatelessWidget {
  const RouteWithParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () async {
          // 打开跳转的页面，并且等待返回值
          var result =
              await Navigator.push(context, MaterialPageRoute(builder: (context) => TipRoute(text: "我是提示xxx")));
          print("路由返回值：$result");

        },
        child: Text('打开提示页'),
      ),
    );
  }
}

// 跳转到的页面
class TipRoute extends StatelessWidget {
  final String text;

  const TipRoute({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("第一个页面传进来参数 text :$text, key: $key");
    return Scaffold(
      appBar: AppBar(
        title: Text("tip"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(onPressed: () => Navigator.pop(context, "我是返回值"), child: Text('返回')),
            ],
          ),
        ),
      ),
    );
  }
}
