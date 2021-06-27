import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_lean/layout.dart';
import 'package:flutter_lean/material.dart';
import 'package:flutter_lean/widget.dart';

var myTutorialHome = MaterialApp(
  title: 'Flutter Tutorial',
  home: TutorialHome(),
);

var myButton = MaterialApp(
  home: Scaffold(
    body: Center(
      child: MyButton(),
    ),
  ),
);

var myCounter = MaterialApp(
  home: Scaffold(
    body: Center(
      child: Counter(),
    ),
  ),
);


// flutter的布局demo
var myLayout = Layout();

// widget demon
var myOtherApp = MyOtherApp();

void main() => runApp(myOtherApp);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'StartUp Name Generator',
      home: RandomWords(), // 有状态的Widget
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[]; // 声明一个泛型数组
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  // Widget build(BuildContext context) {
  //   final wordPair = WordPair.random();
  //   return Text(wordPair.asPascalCase);
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartUp Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  // 添加一个方法
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return const Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/ //每次加载10个
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
