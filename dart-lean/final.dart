void main() {
  // 常量
  final String ab = 'ducafecat';
  const String abc = '123';
  //常量不能被修改
  // 常量不能和var同用
  // final和const区别
  // 1、final可以指定不确定的值(运行时产生的值也可以)，但是const需要指定确定的值(运行时产生的值不行)
  final dt = DateTime.now();// 运行时才确定的值，也不会报错
  print(dt);
  //const cdt = DateTime.now(); // 由于该方法只能在代码运行时才会指定值，所以会报错
  //print(cdt);

  // 2、不可变性可传递
  final List ls = [11,12,33];
  ls[1] = 44; // final可以变化
  print(ls);
  // 3、内存中重复创建，final创建的时两块不同的内存，是不一样对象，const如果是相同的值，内存对象是同一个，不会创建新的内存
  final ls1 = [11, 12, 33];
  final ls2 = [11, 22, 33];
  print(identical(ls1, ls2)); // final创建的时两块不同的内存，是不一样对象
}