void main () {
  // 定义赋值
  String a = 'aaaa';
  String b = 'nnnn';

  // 拼接
  a = 'hello' + 'word';
  a = '''
  aaa
  bbb
  ccc
  ''';
  print(a);
  // 转义
  String e = 'aaaa \n bbb';
  print(e);
  // 取消转义
  e = r'aaaa \n bbb';
  print(e);

  // 字符串方法使用
  assert('Never odd or even'.substring(6,9) == 'odd');
  var parts = 'structured web apps'.split(' ');
  print('$parts[0]');


}