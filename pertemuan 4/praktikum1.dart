void main() {
  // no 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // no 2
  var index = <dynamic>[null, null, null, null, null];
  index[1] = 'Kemal';
  index[2] = 2241720044;
  assert(index[1] == 'Kemal');
  print(index[1]);
  assert(index[2] == 2241720044);
  print(index[2]);
}
