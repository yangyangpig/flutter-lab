

import 'package:flutter/foundation.dart';

/// ChangeNotifier是fluteter：foundation中的一个简单的类，用于向监听器发送通知
class CartCounter with ChangeNotifier{
  int _value = 0;
  int get count => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

}