
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