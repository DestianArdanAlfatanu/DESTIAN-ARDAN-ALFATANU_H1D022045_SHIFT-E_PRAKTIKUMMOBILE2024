// Definisi kelas Mobil
class Mobil {
  String merk;
  
  // Konstruktor untuk inisialisasi objek Mobil
  Mobil(this.merk);
}

// Fungsi untuk menyiram mobil dengan air (asinkron)
Future<void> siramAir(Mobil mobil) async {
  print("Menyiram mobil ${mobil.merk} dengan air...");
  // Simulasi waktu yang dibutuhkan untuk menyiram mobil
  await Future.delayed(Duration(seconds: 2));
  print("Mobil ${mobil.merk} sudah basah.");
}

// Fungsi untuk mencuci mobil dengan sabun (asinkron)
Future<void> cuciDenganSabun(Mobil mobil) async {
  print("Mencuci mobil ${mobil.merk} dengan sabun...");
  // Simulasi waktu untuk mencuci mobil
  await Future.delayed(Duration(seconds: 3));
  print("Mobil ${mobil.merk} sudah bersih.");
}

// Fungsi untuk membilas mobil dengan air (asinkron)
Future<void> bilasMobil(Mobil mobil) async {
  print("Membilas mobil ${mobil.merk}...");
  // Simulasi waktu untuk membilas mobil
  await Future.delayed(Duration(seconds: 2));
  print("Mobil ${mobil.merk} sudah dibilas dan bersih.");
}

// Fungsi utama program
void main() async {
  // Membuat objek Mobil
  var mobilInnova = Mobil("Innova");

  // Proses mencuci mobil
  await siramAir(mobilInnova);
  await cuciDenganSabun(mobilInnova);
  await bilasMobil(mobilInnova);
  
  print("Proses mencuci mobil selesai.");
}
