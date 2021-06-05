void main () {
  var teacher = new Teacher();
  teacher.GetName();
  var student = new Student();
  student.GetName();
  print(People.name);

  var iphone = new IOSPhone(13612951482);
  iphone.startUp();
  iphone.shutdown();
}

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