void main() {
  var phone = new IOSPhone();
  phone('999');
}

class IOSPhone {
  call(String num) {
    print('phone number is $num');
  }
}