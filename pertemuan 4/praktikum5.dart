void main(List<String> args) {
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var record = ('first', a: 2, b: true, 'last', c: 3);
  var swap = tukar((record.a, record.c));
  print(record);
  print(swap);

  (String, int) mahasiswa = ('kemal', 2241720044);
  print(mahasiswa);

  var mahasiswa2 = ('kemal', a: 2241720044, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
