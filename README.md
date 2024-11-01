# Malaccan: Delivering Goods Across the Globe with Generational Trust, Like the Malacca Strait's Legacy in Global Trade. (Mobile version)
# Personal Data

- Nama  : Ilham Satya Nusabhakti
- NPM   : 2306210714
- Kelas : PBP C


# Contents:
- [Jawaban Tugas 7](#tugas-7)
- [Checklist Tugas 7](#checklist-tugas-7)

# Tugas 7
[Back to Contents](#contents)
1. **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**</br>

Stateless widget adalah widget yang tidak punya status dan tidak bisa berubah setelah dibuat. Stateless widget ini cocok untuk elemen UI yang bersifat tetap atau tidak berubah. Sementara itu, stateful widget memiliki status yang bisa berubah, sehingga bisa diperbarui dan di build ulang saat terjadi interaksi atau perubahan data. Perbedaan utama keduanya terletak pada kemampuan untuk menyimpan dan memperbarui status, di mana stateful widget lebih dinamis.

2. **Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**</br>

- `MaterialApp`: Widget ini menyediakan berbagai fitur seperti tema, rute, serta manajemen navigasi. Widget ini mengatur tema aplikasi dengan `ThemeData`.

- `Scaffold`: Widget ini menyediakan struktur dasar untuk halaman aplikasi, termasuk `AppBar` dan `body`.

- `AppBar`: Bagian atas halaman yang menampilkan judul aplikasi. Widget ini juga bisa menampung berbagai tindakan dan navigasi.

- `Padding`: Untuk memberikan ruang kosong di sekeliling widget lain.

- `Column`: Widget ini menyusun child widget dalam bentuk kolom secara vertikal.

- `Row`: Widget ini menyusun child widget dalam bentuk baris secara horizontal.

- `Text`: Widget ini digunakan untuk menampilkan teks di layar. Di sini, saya gunakan untuk menampilkan informasi seperti nama, NPM, kelas, dan sapaan selamat datang.

- `GridView`: Widget ini menampilkan child widget dalam format grid. Disini, saya gunakan untuk menampilkan `ItemCard` dalam beberapa kolom.

- `Card`: Saya menggunakan widget ini untuk membuat area berbentuk persegi yang menampilkan informasi dalam format yang terpisah dan menarik.

- `Icon`: Widget ini saya gunakan untuk menampilkan ikon grafis,seperti pada `ItemCard`.

- `InkWell`: Widget ini mendeteksi sentuhan dan memberikan efek visual saat user menekan kartu, meningkatkan level interaktivitas pada UI.

- `SnackBar`: Widget ini digunakan untuk menampilkan pesan singkat di bagian bawah layar, memberikan feedback kepada user ketika sebuah aksi dilakukan, seperti menekan tombol.

3. **Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**</br>

`setState()` digunakan untuk memperbarui tampilan saat terjadi perubahan data pada widget yang bersifat stateful. Ketika diminta, Flutter akan merender ulang widget yang terpengaruh, sehingga antarmuka pengguna menampilkan data terbaru. Variabel yang dipengaruhi oleh `setState()` adalah variabel yang dideklarasikan dalam kelas widget stateful dan mengatur tampilan dinamis, seperti data yang dapat berubah karena interaksi pengguna atau respons jaringan.

4. **Jelaskan perbedaan antara const dengan final.**</br>

Meskipun kedua fungsi const dan final dapat digunakan untuk mendeklarasikan variabel yang bersifat tetap, ada perbedaan utama antara keduanya. const menciptakan nilai yang bersifat tetap pada waktu kompilasi dan tidak dapat diubah, sedangkan final menciptakan nilai yang diinisialisasi satu kali, biasanya pada waktu runtime. const cocok untuk nilai konstan yang dapat dihitung saat kompilasi, sementara final cocok untuk nilai yang hanya diketahui saat eksekusi.

5. **Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**</br>

- pertama-tama, saya menginisialisasi sebuah app flutter baru berjudul malaccan_mobile pada device saya. Judul ini sesuai dengan tugas-tugas saya sebelumnya. Sama seperti pada tutorial, saya memisahkan kode kode pada `main.dart` ke sebuah file baru bernama `menu.dart`
- untuk membuat tiga tombol sederhana, saya membuat list items berisi instance of `ItemHomepage` serta membuat class `ItemHomepage` sebagai berikut:
```bash
// list items

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat daftar produk", Icons.view_list, Colors.green), // Example color
    ItemHomepage("Tambah produk", Icons.add, Colors.blue), // Example color
    ItemHomepage("Logout", Icons.logout, Colors.red), // Example color
      ];

``` 
```bash
// class ItemHomepage 

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; 

  ItemHomepage(this.name, this.icon, this.color); 
}
```
- Saya kemudian mengimplementasikan perbedaan warna untuk setiap tombol serta memunculkan snackbar dengan tampilan text yang sesuai. Cara untuk diversifikasi warna adalah dengan membuat attribute warna tersendiri untuk setiap instance of `ItemHomepage` dan set colornya dengan warna yang kita state sendiri. Untuk snackbar, cukup straightforward dengan set text nya dengan "Kamu telah menekan tombol {nama tombol}! berikut kode untuk `menu.dart`:
```bash
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {

  final String npm = '2306210714'; // NPM
  final String name = 'Ilham Satya Nusabhakti'; // Nama
  final String className = 'PBP C'; // Kelas

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat daftar produk", Icons.view_list, Colors.green), // Example color
    ItemHomepage("Tambah produk", Icons.add, Colors.blue), // Example color
    ItemHomepage("Logout", Icons.logout, Colors.red), // Example color
      ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
        title: const Text(
          'Malaccan',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Malaccan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; 

  ItemHomepage(this.name, this.icon, this.color); 
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Use the color from the item
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}"))
            );
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
```




# Checklist Tugas 7
[Back to Contents](#contents)
- [x] Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- [x] Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- [x] Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- [x] Jelaskan perbedaan antara const dengan final.
- [x] Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.