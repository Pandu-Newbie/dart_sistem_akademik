import 'matakuliah.dart';

class Nilai {
  MataKuliah matakuliah;
  double nilai;

  Nilai(this.matakuliah, this.nilai);

  // Mengonversi nilai angka menjadi huruf mutu
  String hurufMutu() {
    if (nilai >= 85) {
      return "A";
    } else if (nilai >= 70) {
      return "B";
    } else if (nilai >= 60) {
      return "C";
    } else if (nilai >= 50) {
      return "D";
    } else {
      return "E";
    }
  }

  // Menghitung indeks mutu berdasarkan nilai
  double indexMutu() {
    if (nilai >= 85) {
      return 4.0;
    } else if (nilai >= 70) {
      return 3.0;
    } else if (nilai >= 60) {
      return 2.0;
    } else if (nilai >= 50) {
      return 1.0;
    } else {
      return 0.0;
    }
  }
}
