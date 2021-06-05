void main() {
  // 定义
  int a = 12;
  int b = 0xff;

  // 转换
  num c = num.parse('123.12');
  print(c);

  // 位运算

  // &运算为结果位小的那个
  int aa = 10;
  int bb = 2;
  print(aa & bb);

  // | 运算 结果为大的那个
  var aaa = 10;
  var bbb = 2;
  print(aaa | bbb);

  const USE_LEFT = 0x1;
  const USE_TOP = 0x2;
  const USE_LEFT_TOP = USE_LEFT | USE_TOP;
  var result = USE_LEFT | USE_TOP;
  print(result);
  // 断言 调试阶段才有效果
  assert(USE_LEFT_TOP == result);

  // ～非运算
  /*下面是将9进行非运算步骤 补码--->取反--->+1
  * 01001 9二进制，最高位0 整数 1 负数
  * 00110 补码
  * 11001 取反
  * 11010 +1 // -10
  * */
  var aaaa = 9;
  print(~9);// 输出-10

  // ^异或
  /*不相同的才出1
  * 10100   10
  * 0010    2
  *
  * 10000 8
  * */

  var aaaaa = 10;
  var bbbbb = 2;
  print(aaaaa ^ bbbbb);//输出8

  // 左移 <<
  /**成倍增加
   * 0001 1二进制
   * 0010 左移一位2
   * 0100 左移一位4
   * 1000 左移一位8
   */
  var e = 1 << 1;
  print(e);

  // 右移
  /*
  * 成倍减少
  * 1000 8二进制
  * 0100 右移一位4
  * 0010 右移一位2
  * 0001 右移一位1
  * */
  var f = 8 >> 1;
  print(f);

}
