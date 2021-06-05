// 定义函数类型
typedef int Compare(Object a, Object b);

// 定义排序类
class SortedCollection {
  Compare compare;

  SortedCollection(this.compare);
}

int sort(Object a, Object b) => 0;

void main() {
  var s = new SortedCollection(sort);
  assert(s.compare is Function);
}

