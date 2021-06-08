/// 变量只存储对象的引用，dart的变量类型可以被推断，如果一个对象的引用不局限于单一的类型，可以指定为Object(或dynamic)类型
late String descrition;

void main() {
  var name = 'Bob';
  Object nameOne = 'Bob';
  String nameTwo = 'Bob';
  /// 爱dart中，没初始化的变量拥有一个默认的初始化值：null
  assert(name == 'Bob');

  var number = 42;
  printInteger(number);
  descrition = 'Feijoada'; // 还没有声明类型
  print(descrition);
}

void printInteger(int number) {
  print('The number is $number.');
}
/// dart语言中，所有变量都是一个对象，所有对象都是一个类的实例。numbers、functions、null都是对象
/// 所有的类都继承了Objectl类
/// 尽管Dart是强类型语言，但是在声明变量时指定类型是可选的，因为Dart可以进行类型推断，在上述代码中，变量number类型被推断为int类型
/// 如果开启了空安全，变量在未声明为可空类型时不能为null
/// dart语言如果一个标识符以下划线_开头则表示该标识符在库内是私有的。

/// Late variables
/// 关键词 late

/// Final和Const
/// 如果不想改变一个变量，可以把变量声明为Final或者Const，final只能被赋值一次，const是编译时常量
/// 如果使用const修饰类中变量，必须在前面加上static const

