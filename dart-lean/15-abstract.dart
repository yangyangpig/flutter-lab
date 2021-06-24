/// 关键词abstract，如果想让抽象类同时同被实例化，可以为其定义工厂构造函数
/// 隐式接口。每个类都隐式定义了一个接口并实现了该接口。这个接口包含所有这个类实例成员以及这个类所实现的其他接口。如果想要创建一个
/// A类支持调用B类的API且不想继承B类，则可以实现B类的接口
/// 一个类可以通过关键字implements实现一个或多个接口并实现每个接口定义的API
/// 需要区分继承和实现的区别
/// 子类可以重写父类的实例方法，可以使用@override注释表示你重写了一个成员
/// 如果调用了对象不存在方法，会触发noSuchMethod方法，你可以重写这个方法做一些处理或提示
///
///

abstract class People {
  static String name = "11";
  void GetName() {
    print("My name is susan");
  }
}
// 继承了抽象class的方法
class Teacher extends People {
  static String name = "11";

}
// 接口可以对抽象class的实现
class Student implements People {
  void GetName() {
    print("My name is susi");
  }
}

class Phone {
  int number;
  Phone(this.number);
  void startUp(){
    print('开机');
  }
  void shutdown(){
    print('关机');
  }
}

class IOSPhone extends Phone {
  IOSPhone(int number): super(number);
  @override
  void shutdown() {
    super.shutdown();
    print('ios关机');

  }

  @override
  void startUp() {
    super.startUp();
    print('ios开机');
  }

}
// 利用隐式的接口，所有类都是实现了这个接口
class Person {
  final String _name;
  Person(this._name);

  String greet(String who) => '你好，$who。我是$_name';
}

class Impostor implements Person {
  String get _name => '';

  String greet(String who) => '你好$who,你知道我是谁吗?';
}

// 定一个函数
String greetBob(Person person) => person.greet('小芳');

void main () {
  var teacher = new Teacher();
  teacher.GetName();
  var student = new Student();
  student.GetName();
  print(People.name);

  var iphone = new IOSPhone(13612951482);
  iphone.startUp();
  iphone.shutdown();

  // 接口实现，传递对象
  print(greetBob(Person('小云'))); // 调用的是Person对象的greet方法。输出：你好，小芳。我是小云


  print(greetBob(Impostor())); // 输出你好小芳,你知道我是谁吗?
}