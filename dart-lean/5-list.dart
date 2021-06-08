void main() {
  // 定义
  // 自定义长度
  List l = List.filled(2, null, growable: true);
  l.add(1);
  l.add(2);
  print(l);

  List l2 = List.filled(3,null, growable: true);
  l2.add(1);
  l2.add(2);
  l2.add(3);

  print(l2);

  print(l2.first);
  print(l2.last);
  print(l2.length);
  print(l2.reversed);

  // 添加和插入
  List l3 = List.filled(3, "null", growable: true);
  l3.add("aa");
  l3.addAll(["bb", "cc", "dd"]);
  l3.insert(1,'ff');
  print(l3);
  // 查询
  print(l3.indexOf('cc'));
  print(l3);
  //删除
  l3.removeAt(0);
  print(l3);

  //排序
  l3.sort();

  //操作符
  l3[2] = 'dd';
  print(l3);

  //扩展操作符(...)
  var list = [1,2,3];
  var list2 = [0, ...list];
  print(list2);
  bool promoAction = true;
  // 集合中的if和集合中for操作，在构建集合时候，可以使用条件判断if和循环for
  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (promoAction) 'outlet'
  ];
  print(nav);

  var listOfInts = [1, 2, 3];
  var listOfString = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];

  print(listOfString);
}