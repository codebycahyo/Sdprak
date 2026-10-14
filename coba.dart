void main() {
  // Data mahasiswa: List berisi Map
  List<Map<String, dynamic>> mahasiswa = [
    {'nim': '25.12.1201', 'nama': 'Stevi', 'nilai': 80},
    {'nim': '25.12.1202', 'nama': 'Budi', 'nilai': 65},
    {'nim': '25.12.1203', 'nama': 'Citra', 'nilai': 90},
    {'nim': '25.12.1204', 'nama': 'Dina', 'nilai': 75},
    {'nim': '25.12.1205', 'nama': 'Eka', 'nilai': 60},
  ];

  String garis = '=' * 54;

  // Variabel perhitungan
  int jumlahMahasiswa = mahasiswa.length;
  int totalNilai = 0;
  int jumlahLulus = 0;
  int jumlahTidakLulus = 0;
  int nilaiTertinggi = mahasiswa[0]['nilai'];
  int nilaiTerendah = mahasiswa[0]['nilai'];

  // Header tabel
  print(garis);
  print('${'NIM'.padRight(14)}${'NAMA'.padRight(12)}${'NILAI'.padRight(10)}STATUS');
  print(garis);

  // Proses setiap mahasiswa
  for (int i = 0; i < mahasiswa.length; i++) {
    String nim = mahasiswa[i]['nim'];
    String nama = mahasiswa[i]['nama'];
    int nilai = mahasiswa[i]['nilai'];
    String status;

    // Menentukan status kelulusan
    if (nilai >= 75) {
      status = 'Lulus';
      jumlahLulus++;
    } else {
      status = 'Tidak Lulus';
      jumlahTidakLulus++;
    }

    // Akumulasi total, nilai tertinggi, dan terendah
    totalNilai += nilai;
    if (nilai > nilaiTertinggi) {
      nilaiTertinggi = nilai;
    }
    if (nilai < nilaiTerendah) {
      nilaiTerendah = nilai;
    }

    print('${nim.padRight(14)}${nama.padRight(12)}${nilai.toString().padRight(10)}$status');
  }

  double rataRata = totalNilai / jumlahMahasiswa;
  String rataRataTampil = rataRata.toStringAsFixed(rataRata % 1 == 0 ? 0 : 2);

  // Ringkasan
  print(garis);
  print('Jumlah Mahasiswa    : $jumlahMahasiswa');
  print('Total Nilai         : $totalNilai');
  print('Rata-rata Nilai     : $rataRataTampil');
  print('Jumlah Lulus        : $jumlahLulus');
  print('Jumlah Tidak Lulus  : $jumlahTidakLulus');
  print('Nilai Tertinggi     : $nilaiTertinggi');
  print('Nilai Terendah      : $nilaiTerendah');
  print(garis);
}
