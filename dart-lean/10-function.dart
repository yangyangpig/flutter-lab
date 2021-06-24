
// 标准函数
import 'dart:ffi';

int add (int x ) {
  return x + 1;
}

// 可选参数 []
int addWith(int x, [int y=1, int z=2]) {
  if (y == null) {
    y = 1;
  }
  print(x);
  print(y);
  print(z);
  return x + y;
}

// 可选参数默认值
int addWithDefault(int x, [int y = 1, int z = 2]) {
  return x + y;
}

// 命名参数,用{}声明，明确输入的参数值，flutter非常多命名参数,命名参数就是可选参数
int addOther({int x = 1, int y=2, int z=3}) {
  return x + y + z;
}

// Function返回对象
Function makeAdd(int x) {
  return (int y) => x + y;
}

bool change ({String name = "lisu"}) {
  if (name is String) {
    print("name is type string");
    return true;
  }
  return false;
}
// 如果函数体内包含一个表达式，可以用胖箭头写法
bool isNoble(int atomicNumber) => true;


// 匿名函数，没有函数名称，可以将匿名函数赋给一个变量，并且将变量添加到集合或者从中删除

main (List <String> args) {
  var a = addWith(10, 2, 3);
  print(a);
  var b = addOther(x:10, y:12);
  print(b);

  var add = makeAdd(10);
  var c = add(12);
  print(c);

}

/// Dart是一种真正面向对象的语言，所以函数也是对象并且类型为Function，这意味着函数可以被赋值
/// 或者作为函数参数
/// 函数可以有两种形式参数：必要参数和可选参数，必要参数定义在参数列表前面，可选参数定义在必要参数后面
/// 命名参数默认为可选参数，除非参数被标记为required
/// 可选的位置参数，使用[]将一系列参数包裹起来作为位置参数
/// 默认参数可以在[]用=指定数值
/// 匿名函数 ([[类型] 参数[,...]]) {}
/// 闭包函数，函数内地变量外部可以获取到