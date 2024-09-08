import 'dart:math';

void main() {
  for (int i = 0; i <= 201; i++) {
    bool checkPrime = true;
    for (int j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        checkPrime = false; // Bukan bilangan prima
        break;
      }
    }

    if (i <= 1) {
      checkPrime = false;
    }

    if (checkPrime == true) {
      print('2241720044');
    } else {
      print(i);
    }
  }
}
