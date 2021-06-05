
// 标准函数
import 'dart:ffi';

int add (int x ) {
  return x + 1;
}

// 可选参数 []
int addWith(int x, [int y, int z]) {
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

// 命名参数,用{}声明，明确输入的参数值，flutter非常多命名参数
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


main (List <String> args) {
  var a = addWith(10, 2, 3);
  print(a);
  var b = addOther(x:10, y:12);
  print(b);

  var add = makeAdd(10);
  var c = add(12);
  print(c);

}