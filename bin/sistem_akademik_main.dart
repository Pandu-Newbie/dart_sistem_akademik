import '../lib/krs.dart';
import '../lib/mahasiswa.dart';
import '../lib/matakuliah.dart';


void main() {
  // Membuat objek Mahasiswa
  Mahasiswa mahasiswa = Mahasiswa("230103114", "Pandu Surya Abiansyah", 3);

  // Membuat objek KRS
  KRS krs = KRS(mahasiswa);

  // Daftar mata kuliah yang tersedia
  var matkul1 = MataKuliah("TI-001", "Pemrograman Web 2", 3);
  var matkul2 = MataKuliah("TI-002", "Kewirausahaan 1", 3);
  var matkul3 = MataKuliah("TI-003", "Statistika", 3);
  var matkul4 = MataKuliah("TI-004", "Matematika Diskrit", 3);
  var matkul5 = MataKuliah("TI-005", "Bahasa Inggris 3", 2);
  var matkul6 = MataKuliah("TI-006", "Rekayasa Perangkat Lunak", 3);
  var matkul7 = MataKuliah("TI-007", "Pemrograman Berorientasi Objek", 3);
  var matkul8 = MataKuliah("TI-008", "Pemrograman Basis Data", 3);

  // Menambahkan nilai untuk masing-masing mata kuliah
  krs.tambahNilai(matkul1, 85); // A
  krs.tambahNilai(matkul2, 75); // B
  krs.tambahNilai(matkul3, 65); // C
  krs.tambahNilai(matkul4, 85); // A
  krs.tambahNilai(matkul5, 80); // B
  krs.tambahNilai(matkul6, 90); // A
  krs.tambahNilai(matkul7, 95); // A
  krs.tambahNilai(matkul8, 85); // A

  // Menampilkan KRS
  krs.cetakKRS();

  // Menampilkan Transkrip Nilai dan IPK
  krs.cetakTranskrip();
}
