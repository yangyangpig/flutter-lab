void main() {
  // 弱类型
  // 声明变量，不初始值
  var a;
  a = 'addafd';
  a = 123;
  a = false;
  print(a);
  // 声明变量 并初始值
  // 关键词 dynamic是指任意类型声明，但是不能够有方法
  dynamic b = 'abc';
  b = 12;
  print(b);

  // 关键词Object Object是声明任意类型，但是有方法
  Object c = 12;
  c = false;

  print(c.hashCode);

  //强类型
  String d = "dbcudad";
  bool f = true;

  // dart语言中，一切对象的默认值都是null
  bool dd;
  print(dd);





  print("-------end-------");
}


