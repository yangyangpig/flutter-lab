class Point {
  int x = 0;
  int y = 0;
  var origin;
  // 初始化构造列表
  // Point(this.x, this.y): origin = {x:x,y:y}; // origin是实例变量
  // 命名构造函数
  //  Point.formJson(Map json) { // formJson是标识符,可以自己任意命名
  //   print(json);
  //   x = json['x'];
  //   y = json['y'];
  // }

  // 以上初始化列表和命名构造函数可以合成一个
  Point.formJson(Map<String, int> json) : x = json['x']!, y = json['y']!, origin = json['x']! {
     print('In Point.formJson(): ($x, $y)');
  }



  // 重定向构造函数, this为上面默认构造函数Point，达到转到默认构造函数上面
  // Point.formXML(Map xml): this(xml['x'], xml['y']);

}


class PointV2 {
  late int x;
  late int y;
  var origin;

  PointV2(this.x, this.y): origin = {x:x,y:y};

  PointV2.formJson(Map<String, int> json) {
    x = json['x']!; // dart 空安全
    y = json['y']!; // dart 空安全
  }

  /// 重定向构造函数。有时候类中的构造函数仅用于调用类中其它的构造函数，此时该构造函数没有函数体，只需在函数签名后使用:指定需要重定向到其它构造函数

  // 委托实现给主构造函数
  PointV2.formJsonV2(Map<String, int> json): this(json['x']!, json['y']!); // 委托给PointV2构造函数

  /// 常量构造函数。如果类生成的对象都是不变的，可以在生成这些对象时就将其变为编译时常量。可以在类的构造函数前加上const关键字并确保所有
/// 实例变量均为final来实现该功能
///

}

/// 工厂构造函数。使用factory关键字标识类的构造函数将会令该构造函数变为工厂构造函数。
/// 构造函数返回的实例并非总是会返回新的实例对象。可能返从缓存中返回对象

class Logger {
  final String name;
  bool mute = false;

  // _cache变量是私有变量
  static final Map<String, Logger> _cache = <String, Logger> {};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

// 类中的方法
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.y, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.y, y - v.y);


  void printValue() {
    print([this.x, this.y]);
  }

}


void main() {
  // var p = new Point.(12, 12);
  // print([p.x, p.y, p.origin]);
  var c = new Point.formJson({'x':12,'y':13});
  print([c.x, c.y, c.origin]);

  var d = PointV2(23, 22);
  print([d.x, d.y, d.origin]);

  var f = PointV2.formJsonV2({'x':23, 'y':22});
  print([f.x, f.y, f.origin]);

  var logger = Logger("UI");
  logger.log("Button clicked");

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
  loggerJson.log("logger name: " + loggerJson.name);

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  // v + w 表示 2+2，3+2

  (v + w).printValue();

  var h = Vector(4, 5);
  h.printValue();
}