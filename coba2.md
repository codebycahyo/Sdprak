import 'dart:io';

// Function minimal sesuai modul:
int hitungSubtotal(int harga, int jumlah) {
  return harga * jumlah;
}

double hitungDiskon(int subtotal, double persen) {
  return subtotal * (persen / 100);
}

double hitungTotal(int subtotal, double diskon) {
  return subtotal - diskon;
}

void tampilNota(
  String namaPembeli,
  String namaBarang,
  int harga,
  int jumlah,
  int subtotal,
  double persenDiskon,
  double diskon,
  double total,
) {
  print("\n=================================");
  print("              NOTA               ");
  print("=================================");
  print("Pembeli     : $namaPembeli");
  print("Barang      : $namaBarang");
  print("Harga       : Rp$harga");
  print("Jumlah      : $jumlah");
  print("---------------------------------");
  print("Subtotal    : Rp$subtotal");
  print("Diskon ${persenDiskon.toInt()}% : Rp${diskon.toInt()}");
  print("Total       : Rp${total.toInt()}");
  print("=================================");
}

void main() {
  // Input Data dengan tipe data yang tepat
  stdout.write("Nama pembeli: ");
  String namaPembeli = stdin.readLineSync() ?? "";

  stdout.write("Nama barang: ");
  String namaBarang = stdin.readLineSync() ?? "";

  stdout.write("Harga (angka bulat): ");
  int harga = int.parse(stdin.readLineSync() ?? "0"); // Pastikan int

  stdout.write("Jumlah (angka bulat): ");
  int jumlah = int.parse(stdin.readLineSync() ?? "0"); // Pastikan int

  stdout.write("Diskon (%): ");
  double persenDiskon = double.parse(stdin.readLineSync() ?? "0"); // Pastikan double

  // Perhitungan
  int subtotal = hitungSubtotal(harga, jumlah);
  double diskon = hitungDiskon(subtotal, persenDiskon);
  double total = hitungTotal(subtotal, diskon);

  // Menampilkan Nota
  tampilNota(
    namaPembeli,
    namaBarang,
    harga,
    jumlah,
    subtotal,
    persenDiskon,
    diskon,
    total,
  );
}
