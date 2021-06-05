
// 第1步：定义主线程
import 'dart:isolate';

main(List<String> args) async {

  // 第3步：编写回调Port，发送通道
  var receivePort = new ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);

  // 第6步：保存隔离线程回调的port
  var sendPort = await receivePort.first;

  // 第7步：发送消息
  var msg = await sendReceive(sendPort, 'foo');
  print('received $msg');
  msg = await sendReceive(sendPort, "close");
  print('received $msg');

}

// 第2步：定义隔离线程的入口
// 其实port就像chan是一个通道的抽象
echo(SendPort sendPort) async {
  // 第4步：编写回调Port，接收通道
  var port = new ReceivePort();
  // 第5步：告诉主线程回调入口点
  sendPort.send(port.sendPort);

  //第8步: 循环接收消息
  await for (var msg in port) {
    var data = msg[0];
    SendPort replyTo = msg[1];

    // 回传发送方数据
    replyTo.send(data);
    // 如果数据是close则关闭
    if (data == 'close') {
      port.close();
    }
  }
}

Future sendReceive(SendPort port, msg) {
  ReceivePort response = new ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}