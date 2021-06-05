void main () {
  // 定义
  var a = Map();
  a['name'] = 'ddfda';
  a['web'] = 'ducda';
  print(a);

  // 属性
  var c = {"name": 'dafd', "web": "dafd.tech"};
  print(c.isEmpty);
  print(c.isNotEmpty);
  print(c.keys);

  // 方法
  // 添加
  var b = Map();
  b.addAll({"name": "lusi", "web": "lusi.com"});
  print(b.containsKey("name"));
  print(b.containsValue("lusi"));
  // 清空
  // b.clear();
  // print(b);
  // 删除
  b.remove("name");
  print(b);
  b.removeWhere((key, value) => key == "web");
  print(b);

  // 更新
  if (b.containsKey("name")) {
    b.update("name", (value) => "aaa");
    print(b);
  }
}