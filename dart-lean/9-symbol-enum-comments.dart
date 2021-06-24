/// 每个枚举值都有一个index成员变量的Getter方法，该方法返回以0为基准索引的位置值。
/// 如果想获取全部枚举值，使用values方法获取列表
enum Staus {none, running, stoppend, paused}

main (List<String> args) {
  List<Staus> staus = Staus.values;
  for (var s in staus) {
    print("value: "+ s.toString());
  }

  var b = Staus.paused;
  var pausedIdx = Staus.paused.index;
  if (b == Staus.paused) {
    print("pause index: "+ pausedIdx.toString()  + " value: " + Staus.paused.toString());
  }

}