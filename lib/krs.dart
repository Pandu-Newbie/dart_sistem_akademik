import 'mahasiswa.dart';
import 'matakuliah.dart';
import 'nilai.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<Nilai> daftarNilai = [];

  KRS(this.mahasiswa);

  // Menambahkan mata kuliah dan nilai ke dalam KRS
  void tambahNilai(MataKuliah matakuliah, double nilai) {
    daftarNilai.add(Nilai(matakuliah, nilai));
  }

  // Menampilkan daftar mata kuliah yang diambil (KRS)
  void cetakKRS() {
    print('\nKartu Rencana Studi (KRS) untuk ${mahasiswa.nama} (NIM: ${mahasiswa.nim}): ');
    if (daftarNilai.isEmpty) {
      print('Belum ada mata kuliah yang diambil.');
    } else {
      for (var nilai in daftarNilai) {
        print('- ${nilai.matakuliah.nama} (${nilai.matakuliah.sks} SKS)');
      }
    }
  }

  // Menghitung IPK mahasiswa
  double hitungIPK() {
    double totalMutu = 0;
    int totalSKS = 0;
    for (var nilai in daftarNilai) {
      totalMutu += nilai.indexMutu() * nilai.matakuliah.sks;
      totalSKS += nilai.matakuliah.sks;
    }
    return totalSKS == 0 ? 0 : totalMutu / totalSKS;
  }

  // Menampilkan transkrip nilai mahasiswa
  void cetakTranskrip() {
    print('\nTranskrip Nilai untuk ${mahasiswa.nama} (NIM: ${mahasiswa.nim}):');
    for (var nilai in daftarNilai) {
      print(
          '- ${nilai.matakuliah.nama} (${nilai.matakuliah.sks} SKS): Nilai ${nilai.nilai} (${nilai.hurufMutu()})');
    }
    print('IPK: ${hitungIPK().toStringAsFixed(2)}');
  }
}
