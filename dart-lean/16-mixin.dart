/// mixin是一种在多重继承中复用某个类中代码的方法模式
/// 使用with关键字并在其后跟上Mixin类的名字使用Mixin模式
/// Mixin类是一个继承了Object而且没有构造函数的类，以Mixin关键字开头
/// 关键字on是用来指定那些类可以使用该Mixin类，比如Mixin类A，但是A只能被B类使用，则可以这样定义：Mixin A on B
///
void main() {
  var xm = new Xiaomi();
  xm.startup();
  xm.call();
  xm.sms();
}

class Phone {
  void startup() {
    print('开机');
  }

  void shutdown() {
    print('关机');
  }
}

class AndroidPhone extends Phone {
}

class AndroidSystem {
  void call() {
    print('android call....');
  }
}

class Weixin {
  void sms() {
    print('weixin sms');
  }
}

class Xiaomi extends AndroidPhone with AndroidSystem, Weixin {

}