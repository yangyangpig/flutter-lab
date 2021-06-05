void main() {
  // 泛型使用
  var l = List <String>();
  l.add('aaa');
  l.add('bbb');
  l.add('ccc');

  print(l);

  var m = Map<int, String>();
  m[1] = '1';
  m[2] = '2';
  m[3] = '3';

  print(m);

  var key = addCache('aaa', 12);
  print('{$key}');

  var p = Phone<String>('1232132');
  print(p.mobileNumber);

  var android = AndroidPhone(13612951482);
  var sp = SuperPhone<AndroidPhone>(android);
  print(sp.mobile.number);

}

// 泛型函数
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
// 泛型限制
class SuperPhone<T extends AndroidPhone> {
  final T mobile;

  SuperPhone(this.mobile);
}
