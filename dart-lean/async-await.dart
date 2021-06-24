// @dart=2.9
import 'package:dio/dio.dart';

void main() async {
  // 异步调用
  Dio dio = Dio();
  print(1);
  Response<String> response = await dio.get("https://ducafecat.tech");
  var uid = response.data[1];

  print(uid);
  print(2);

  var content = await getUrl("http://ducafecat.tech");
  //print(content);
  print(5);

  // response = await dio.get("https://ducafecat.tech?uid=${uid}");

  // print(response.data);

}

/// 异步函数。
Future<String> getUrl(String url) async {
  Dio dio = Dio();
  // 等待
  print(3);
  Response<String> response = await dio.get(url);
  print(4);
  return response.data;
}