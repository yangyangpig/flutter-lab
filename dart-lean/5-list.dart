void main() {
  // 定义
  // 自定义长度
  List l = new List();
  l.add(1);
  l.add(2);
  print(l);

  List l2 = List(3);
  l2[0] = 1;
  l2[1] = 2;
  l2[2] = 3;

  print(l2);

  print(l2.first);
  print(l2.last);
  print(l2.length);
  print(l2.reversed);

  // 添加和插入
  List l3 = new List();
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
}