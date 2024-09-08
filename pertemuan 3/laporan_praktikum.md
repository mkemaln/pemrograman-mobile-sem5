Nama : Muhammad Kemal Nugraha\
Kelas : 3D\
NIM : 2241720044

# Praktikum 1
1. Ketik atau salin kode program berikut ke dalam fungsi main().
    ```dart
    String test = "test2";
    if (test == "test1") {
    print("Test1");
    } else If (test == "test2") {
    print("Test2");
    } Else {
    print("Something else");
    }

    if (test == "test2") print("Test2 again");
    ```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!\
**Jawab:**\
Telah terjadi error saat proses kompilasi. Pesan errornya sebagai berikut:
    ```
    compileDDC
    main.dart:5:17: Error: Expected ')' before this.
    } else If (test == "test2") {
                    ^^
    main.dart:7:3: Error: Expected ';' after this.
    } Else {
    ^^^^
    main.dart:7:3: Error: Undefined name 'Else'.
    } Else {
    ^^^^
    ``` 
    Yang artinya terdapat kekurangan symbol seperti ')' dan ';'. Serta tidak diketahuinya variabel Else dari compiler.\
    **Perbaikan:**
    ```dart
    void main() {
    String test = "test2";
        if (test == "test1") {
            print("Test1");
        } else if (test == "test2") {
            print("Test2");
        } else {
            print("Something else");
        }

        if (test == "test2") print("Test2 again");
    }
    ```
    dengan memperbaiki sintaks else if dan else menjadi lower case semua akan memperbaiki kode dan menghasilkan berikut,
    ```
    Test2
    Test2 again
    ```

3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
    ```dart
    String test = "true";
    if (test) {
    print("Kebenaran");
    }
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.\
    **Jawab:**\
    Terdapat error
    ```
    compileDDC
    main.dart:3:5: Error: A value of type 'String' can't be assigned to a variable of type 'bool'.
    if (test) {
        ^
    ```
    yang artinya varibel tipe string tidak bisa digunakan dalam varibel bertipe boolean.\
    **Perbaikan:**
    ```dart
    void main() {
        String test = "true";
        if (test == "true") {
            print("Kebenaran");
        }
    }
    ```
    dengan memberikan parameter logika yaitu berupa "true" maka hasil if nya adalah true dan akan mencetak "Kebenaran".

# Praktikum 2
1. Ketik atau salin kode program berikut ke dalam fungsi main().
    ```dart
    while (counter < 33) {
    print(counter);
    counter++;
    }
    ```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.\
**Jawab:**\
Terdapat error
    ```
    compileDDC
    main.dart:2:10: Error: Undefined name 'counter'.
    while (counter < 33) {
            ^^^^^^^
    main.dart:3:11: Error: Undefined name 'counter'.
        print(counter);
            ^^^^^^^
    main.dart:4:5: Error: Getter not found: 'counter'.
        counter++;
        ^^^^^^^
    ```
    Artinya variabel counter tidak dapat ditemukan.\
    **Perbaikan:**
    ```dart
    void main() {
    int counter = 25;
    while (counter < 33) {
        print(counter);
        counter++;
    }
    }
    ```
    dengan menambahkan variabel counter, kode sudah bisa dijalankan dengan hasil,
    ```
    25
    26
    27
    28
    29
    30
    31
    32
    ```
3. Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
    ```dart
    do {
    print(counter);
    counter++;
    } while (counter < 77);
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.
    **Jawab:**\
    Tidak terjadi error,
    ```dart
    void main() {
    int counter = 60;
    //   while (counter < 33) {
    //     print(counter);
    //     counter++;
    //   }
    do {
        print(counter);
        counter++;
    } while (counter < 77);
    }
    ```
    dan menghasilkan kode berikut
    ```
    60
    61
    62
    63
    64
    65
    66
    67
    68
    69
    70
    71
    72
    73
    74
    75
    76
    ```

# Praktikum 3
1. Ketik atau salin kode program berikut ke dalam fungsi main().
    ```dart
    for (Index = 10; index < 27; index) {
    print(Index);
    }
    ```
2. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
**Jawab:**\
Terdapat error
    ```
    compileDDC
    main.dart:2:19: Error: Undefined name 'index'.
    for (Index = 10; index < 27; index) {
                    ^^^^^
    main.dart:3:9: Error: Undefined name 'Index'.
    print(Index);
            ^^^^^
    main.dart:2:31: Error: Undefined name 'index'.
    for (Index = 10; index < 27; index) {
                                ^^^^^
    main.dart:2:7: Error: Setter not found: 'Index'.
    for (Index = 10; index < 27; index) {
        ^^^^^
    ```
    Error ini artinya tidak ditemukan variabel Index maupun index karena belum  dilakukan inisialisai variabel tersebut.\
    **Perbaikan:**
    ```dart
    void main() {
    for (int index = 10; index < 27; index++) {
        print(index);
    }
    }
    ```
    Dengan menginisialisasi variabel index dengan tipe int serta memperbaiki nama variabel menjadi lowercase index akan memperbaiki kode. Dan juga dengan menambahkan increment pada parameter ketiga for untuk menjalankan perulangan. 
3. Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
    ```dart
    If (Index == 21) break;
    Else If (index > 1 || index < 7) continue;
    print(index);
    ```
    Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.\
    **Jawab:**
    - Error yang terjadi ada pada kesalahan sintaks if else yang seharusnya menggunakan lowercase,
    - tidak konsistennya penggunaan variabel index,
    - dan pada else if yang seharusnya menggunakan AND (&&) bukan OR ( | | ).

    **Perbaikan:**
    ```dart
    void main() {
        for (int index = 6; index < 27; index++) {
            //print(index);
            //perbaikan
            if (index == 21) break;
            else if (index > 1 && index < 7) continue;
            print(index);
        }
    }
    ```
    **Hasil:**
    ```
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    ```

# Tugas Praktikum
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.\
**Kode:**
```dart
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
      print('M Kemal Nugraha, 2241720044');
    } else {
      print(i);
    }
  }
}
```

**Hasil:**
```
0
1
M Kemal Nugraha, 2241720044
M Kemal Nugraha, 2241720044
4
M Kemal Nugraha, 2241720044
6
M Kemal Nugraha, 2241720044
8
9
.
.
.
M Kemal Nugraha, 2241720044
194
195
196
M Kemal Nugraha, 2241720044
198
M Kemal Nugraha, 2241720044
200
201
```