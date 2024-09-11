void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Kemal';
  gifts['nim'] = '2241720044';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Kemal';
  nobleGases[22] = '2241720044';

  mhs1['nama'] = 'Kemal';
  mhs1['nim'] = '2241720044';

  mhs2[1] = 'Kemal';
  mhs2[2] = '2241720044';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
