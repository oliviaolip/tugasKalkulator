import 'dart:core';
import 'dart:io';
import 'kalkulator.dart';

void main() {
  var kalkulato = kalkulator();

  while (true) {
    try {
      stdout.write("Masukkan bilangan pertama: ");
      double bil1 = double.parse(stdin.readLineSync()!);

      //input bilangan kedua
      stdout.write("Masukkan bilangan kedua: ");

      double bil2 = double.parse(stdin.readLineSync()!);

      //menampilakn menu operasi
      print('===TUGAS KALKULATOR===');
      print('1. Penjumlahan (+)');
      print('2. Pengurangan (-)');
      print('3. Perkalian (*)');
      print('4. Pembagian (/)');

      stdout.write("Pilih operasi (1/2/3/4): ");
      String? pilihan = stdin.readLineSync();

      double hasil;

      //operasi sesuai pilihan
      switch (pilihan) {
        case '1':
          hasil = kalkulato.tambah(bil1, bil2);
          print('Hasil Penjumlahan: $bil1 + $bil2 = $hasil');
          break;
        case '2':
          hasil = kalkulato.kurang(bil1, bil2);
          print('Hasil Pengurangan: $bil1 - $bil2 = $hasil');
          break;
        case '3':
          hasil = kalkulato.kali(bil1, bil2);
          print('Hasil Perkalian: $bil1*$bil2 = $hasil');
          break;
        case '4':
          hasil = kalkulato.bagi(bil1, bil2);
          print('Hasil Pembagian: $bil1 / $bil2 = $hasil');
          break;
        default:
          print('Pilihan tidak valid. Silahkan pilih antara 1-4.');
          continue;
      }
      //apakah ingin mengulang
      stdout.write('Apakah anda ingin mengulangi kalkulator ini? (y/n): ');
      String? ulang = stdin.readLineSync();
      if (ulang?.toLowerCase() == 't')
        print('Terima kasih telah menggunakan kalkulator ini.');
      break;
    } catch (e) {
      print('Input tidak valid. Silahkan masukkan angka yang benar.');
    }
  }
}