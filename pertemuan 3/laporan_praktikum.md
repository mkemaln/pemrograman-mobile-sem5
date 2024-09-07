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

