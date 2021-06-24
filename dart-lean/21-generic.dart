/// 泛型常用于需要要求类型安全的情况下，好处：减少重复代码，帮助代码生成
/// List、Set、Map字面量可以参数化。
/// 调用构造方法时，也可以使用泛型，只需要在类名后面用<...>将一个或多个类型包裹即可
/// dart泛型是固化的，就是运行时也会保持类型信息
/// 限制参数化类型。限制泛型范围。可以使用extends关键字
///
void main() {
  // 泛型使用
  var l = <String>[];
  l.add('aaa');
  l.add('bbb');
  l.add('ccc');

  print(l);

  var m = Map<int, String>();
  m[1] = '1';
  m[2] = '2';
  m[3] = '3';

  print(m);

  // 如果没指定类型，dart会自动识别传进来参数类型，填充会泛型定义
  var key = addCache('aaa', 12);
  print('{$key}');

  // 指定泛型类型,那传进来参数就需要和指定的类型一致
  var key2 = addCache<String, int>('111', 12);
  print('{$key2}');

  // 泛型类
  var p = Phone<String>('1232132');
  print(p.mobileNumber);


  var android = AndroidPhone(13612951482);
  var sp = SuperPhone<AndroidPhone>(android);
  print(sp.mobile.number);
}

// 泛型函数，返回类型、参数类型、局部变量类型，可使用泛型
K addCache<K, V>(K key, V val) {
  print('${key} ${val}');

  return key;
}

// 构造函数泛型
class Phone<T> {
  final T mobileNumber;
  Phone(this.mobileNumber);
}

class AndroidPhone {
  int number;
  AndroidPhone(this.number);
}

// 泛型限制，限制这个T只能是AndroidPhone类型
class SuperPhone<T extends AndroidPhone> {
  final T mobile;

  SuperPhone(this.mobile);
}
