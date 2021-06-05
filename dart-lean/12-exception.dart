
int add ([int x]) {
  if (x == null) {
    throw new NullThrownError();
  }
  return x +1;
}

void main () {
  add(10);

  // 抛出了错误
  // throw new FormatException();
  // throw new OutOfMemoryError();

  //捕获错误
  try {
    throw new OutOfMemoryError();
  } on OutOfMemoryError { // 精准捕获
    print('没内存');
  } catch (e) {
    print(e);
  } finally {
    // 错误最后的处理
  }
}