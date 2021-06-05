void main() {
  // 定义
  var s = Set();
  s.add("java");
  s.add("php");
  s.add("js");
  s.add("dart");
  print(s);

  // 属性
  print(s.length);
  print(s.isNotEmpty);
  print(s.first);
  print(s.last);
  print(s.length);

  // 方法
  s.addAll(["cc",'dd','ff']);
  // 查询
  print(s.contains('cc'));

  //集合操作
  var b = Set();
  b.addAll(['cc','java']);
  // 差集
  print(s.difference(b));

  //交集
  print(s.intersection(b));

  //联合
  print(s.union(b));

  // 删除
  s.remove('java');
  print(s);

  // 查询
  // 正向查询
  print(s.firstWhere((element) => element == 'php'));

  // 返向查询
  print(s.lastWhere((element) => element == 'dart'));

  

}