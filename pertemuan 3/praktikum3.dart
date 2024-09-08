void main() {
  for (int index = 6; index < 27; index++) {
//     print(index);
//     perbaikan
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}
