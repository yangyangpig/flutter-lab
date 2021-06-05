class Point {
  num x;
  num y;
  var origin;
  // 初始化构造列表
  Point(this.x, this.y): origin = {x:x,y:y};
  // 命名构造函数
  Point.formJson(Map json) {
    print(json);
    x = json['x'];
    y = json['y'];
  }

  // 重定向构造函数, this为上面默认构造函数Point，达到转到默认构造函数上面
  Point.formXML(Map xml): this(xml['x'], xml['y']);

}

void main() {
  var p = new Point(12, 12);
  print([p.x, p.y, p.origin]);
  var c = new Point.formJson({'x':12,'y':13});
  print([c.x, c.y]);
}