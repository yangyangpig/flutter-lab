void main() {
  // dart:core是自动引入。String、num支持dart内置数据类型，List、Map、Set提供了集合对象数据。剩余是普通的数据类型

  // String和常规表达
  String shakespeareQuote = "All the world's a stage, ...";
  var moreShakespeare = StringBuffer(); // 构造函数
  moreShakespeare.write('And all the men and women ');
  moreShakespeare.write('merely players; ...');

  var other = shakespeareQuote.split('').reversed.join();
  print(other);

  print(moreShakespeare.toString());

  print(shakespeareQuote.toUpperCase());

  /// collection集合的操作

  var superheroes = ['Batman','Superman', 'Harry Potter'];
  print(superheroes.reversed);
  superheroes.addAll(['Joker','Lex Luthor']);
  print(superheroes);

  var bigint = BigInt.from(12);
  print(bigint.abs());



}