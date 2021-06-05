main (List <String> args) {
  // 三元运算符
  var a = true;
  var b = a == true ? 'yes':'no';
  print(b);

  // 级联运算符
  StringBuffer c = StringBuffer();
  c
    ..write('aaa')
    ..write('cc')
    ..write('dd');
  print(c);

  num d = 12;
  var da = d as String;
  print(da);

  // 如果变量没有初始化值就给赋值??


}