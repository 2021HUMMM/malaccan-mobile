# Malaccan: Delivering Goods Across the Globe with Generational Trust, Like the Malacca Strait's Legacy in Global Trade. (Mobile version)
# Personal Data

- Nama  : Ilham Satya Nusabhakti
- NPM   : 2306210714
- Kelas : PBP C


# Contents:
- [Jawaban Tugas 7](#tugas-7)
- [Checklist Tugas 7](#checklist-tugas-7)
- [Jawaban Tugas 8](#tugas-8)
- [Checklist Tugas 8](#checklist-tugas-8)

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

# Tugas 8
[Back to Contents](#contents)
1.  **Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**</br>

`const` digunakan untuk membuat objek yang bersifat tetap dan diinisialisasi saat compile-time. Hal ini meningkatkan efisiensi kinerja aplikasi. Objek `const` disimpan sekali di memori, mengurangi rebuild widget yang statis. `const` digunakan pada elemen tetap seperti teks atau padding. Kita menghindari penggunaan `const` pada widget yang berubah agar aplikasi tetap responsif terhadap input user.

2. **Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**</br>

Column menata elemen dalam arah vertikal dari atas ke bawah, sedangkan Row menata elemen secara horizontal dari kiri ke kanan. Kita menggunakan mainAxisAlignment untuk mengatur posisi elemen di sepanjang sumbu utamanya (vertikal pada column dan horizontal pada row) dan CrossAxisAlignment untuk mengatur posisi elemen di sepanjang sumbu silangnya (horizontal pada column dan vertikal pada row). Berikut contoh implementasinya:
```bash
child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center, # mengatur posisi pada sumbu horizontal
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, # mengatur posisi pada sumbu horizontal
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
```

3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**</br>

Pada halaman form yang saya buat, elemen input yang digunakan adalah:

- `TextFormField`: Digunakan untuk menginput teks, seperti:
   - Nama produk
   - Deskripsi produk
   - Harga produk
   - Jumlah produk
- `ElevatedButton`: Digunakan sebagai tombol `Save` untuk menyimpan data yang diisi ke dalam form dan menampilkan pesan konfirmasi jika validasi berhasil.

- `AlertDialog`: Digunakan untuk menampilkan dialog konfirmasi setelah pengguna mengklik tombol `Save`, berisi informasi yang telah dimasukkan, seperti nama, deskripsi, harga, dan jumlah produk.

- `TextButton`: Digunakan dalam `AlertDialog` untuk memberikan opsi menutup dialog setelah pengguna melihat informasi yang ditampilkan.

Selain elemen input yang telah digunakan, ada beberapa elemen input lain yang tidak digunakan pada form ini, yaitu:

- `Checkbox`: Untuk pilihan ya/tidak.
- `Radio`: Untuk memilih satu opsi dari beberapa pilihan.
- `DropdownButton`: Untuk menampilkan menu drop-down dan memilih satu opsi.
- `Slider`: Untuk memilih nilai dalam rentang tertentu.
- `Switch`: Untuk mengaktifkan atau menonaktifkan pilihan boolean.

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?** </br>

Saya mengatur tema menggunakan `ThemeData` dan mendefinisikan warna kustom dengan MaterialColor. Saya memilih warna teal sebagai warna utama (primary) dengan berbagai level kecerahan, dan mengonfigurasi warna sekunder menggunakan `ColorScheme.fromSwatch`. Dengan begini, tema bisa di set secara konsisten. Berikut kodenya:
```bash
import 'package:flutter/material.dart';
import 'package:malaccan_mobile/screens/menu.dart';

// Define custom MaterialColor for teal
MaterialColor customTeal = MaterialColor(
  const Color(0xFF00796B).value,
  <int, Color>{
    50: const Color(0xFFE0F2F1),
    100: const Color(0xFFB2DFDB),
    200: const Color(0xFF80CBC4),
    300: const Color(0xFF4DB6AC),
    400: const Color(0xFF26A69A),
    500: const Color(0xFF00796B), // Primary color (500)
    600: const Color(0xFF00796B),
    700: const Color(0xFF00695C),
    800: const Color(0xFF004D40),
    900: const Color(0xFF003B2D), // Darkest shade (900)
  },
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malaccan Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customTeal, // Use the custom teal color
        ).copyWith(secondary: const Color.fromARGB(255, 204, 204, 204)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**</br>

Pada Flutter, navigasi dilakukan menggunakan widget `Navigator`, yang bertugas untuk mengelola stack halaman. berikut beberapa contoh method dari `Navigator` yang saya gunakan pada program:
- `push()`: menambahkan suatu route ke dalam stack route yang dikelola oleh `Navigator`. Pada program dibawah, `push` menambahkan ProductEntryFormPage ke atas stack.
```bash
if (item.name == "Tambah Product") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage()));
          }
```
- `pushReplacement()` : menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Berikut contohnya:
```bash
onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
```
- `pop()` : menghapus route yang sedang ditampilkan kepada pengguna (atau dalam kata lain, route yang berada pada paling atas stack) dari stack route yang dikelola oleh `Navigator`. Berikut contoh implementasinya:
```bash
TextButton(
  child: const Text('OK'),
  onPressed: () {
    Navigator.pop(context);
    _formKey.currentState!.reset();
  },
),
```

# Checklist Tugas 8
[Back to Contents](#contents)
- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
  - [x] Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
  - [x] Memiliki sebuah tombol `Save`.
  - [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    - [x] Setiap elemen input tidak boleh kosong.
    - [x] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama.
- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol Save pada halaman formulir tambah item baru.
- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
  - [x] Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
  - [x] Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
  -[x]  Ketika memiih opsi `Tambah Item`, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root folder (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  - [x] Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?
  - [x] Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
  - [x] Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
  - [x] Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
  - [x] Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- [x] Melakukan `add`-`commit`-`push` ke GitHub.



# Tugas 9
[Back to Contents](#contents)

1. **Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**</br>

Model diperlukan untuk mengatur data agar lebih terstruktur, mempermudah validasi, dan memastikan data yang dikirim atau diterima sesuai format yang diharapkan. Jika tidak membuat model, pengambilan atau pengiriman data JSON bisa menjadi rawan error karena tidak ada mekanisme yang menjamin konsistensi tipe data atau field yang diperlukan. Namun, secara teknis, aplikasi tetap bisa berjalan tanpa model, tetapi risiko bug, data corrupt, atau kesalahan parsing akan meningkat.

2. **Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**</br>

Library http digunakan untuk melakukan komunikasi antara aplikasi Flutter dan server Django melalui protokol HTTP. Fungsinya meliputi pengiriman permintaan seperti GET untuk mengambil data dan POST untuk mengirim data, serta menerima respon dari server dalam bentuk JSON. Dengan library ini, aplikasi dapat berinteraksi langsung dengan API Django untuk mengambil, mengubah, atau menyimpan data, sehingga menghubungkan frontend dan backend secara efisien.

3. **Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**</br>


CookieRequest berfungsi untuk mengelola sesi pengguna dalam aplikasi Flutter, termasuk autentikasi dan pengelolaan cookies. Dengan menyimpan cookies, library ini memungkinkan aplikasi melakukan permintaan HTTP yang terautentikasi tanpa perlu mengatur ulang informasi login setiap kali ada permintaan baru. Instance CookieRequest dibagikan ke seluruh komponen aplikasi agar semua bagian dapat menggunakan sesi yang sama secara konsisten, sehingga memudahkan komunikasi dengan server serta menjaga pengalaman pengguna yang lancar.

4. **Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**</br>

Mekanisme pengiriman data dimulai dari input pengguna melalui formulir di Flutter. Data tersebut kemudian divalidasi dan dikirim ke server menggunakan metode HTTP (seperti POST) melalui library seperti CookieRequest. Server menerima data, memprosesnya (misalnya menyimpan ke database), dan merespons dengan data yang diperbarui atau status keberhasilan. Di Flutter, data dari server diambil kembali menggunakan metode HTTP (seperti GET), diubah menjadi objek model sesuai struktur JSON, lalu ditampilkan ke interface aplikasi menggunakan widget

5. **Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**</br>


Mekanisme autentikasi dimulai saat pengguna mengisi data login atau register pada Flutter. Data tersebut dikirim ke server Django melalui permintaan POST menggunakan CookieRequest. Django memvalidasi data, memeriksa kredensial untuk login, atau membuat akun baru untuk register. Jika berhasil, Django mengirimkan respons berisi token atau cookie autentikasi ke Flutter. Token ini disimpan oleh CookieRequest untuk mengidentifikasi pengguna dalam sesi aktif. Saat logout, permintaan dikirim ke Django untuk menghapus sesi, dan token atau cookie dihapus dari Flutter. Setelah login berhasil, Flutter menampilkan menu utama dengan data pengguna yang diambil dari server sesuai token yang valid.

6. **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**</br>

- implementasi registrasi pada proyek flutter:</br>
```bash
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:malaccan_mobile/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://127.0.0.1:8000/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
- halaman login pada flutter: </br>
```bash
import 'package:malaccan_mobile/screens/menu.dart';
import 'package:malaccan_mobile/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurple[400]),
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Cek kredensial
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request
                          .login("http://127.0.0.1:8000/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Selamat datang, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
- integrasi autentikasi django dengan proyek flutter: </br>

Integrasi autentikasi Django dengan Flutter dimulai dengan menyiapkan sistem autentikasi di Django, seperti membuat aplikasi authentication, mengonfigurasi CORS, dan membuat endpoint untuk login yang menerima data kredensial dari Flutter. Flutter kemudian mengakses endpoint ini melalui package pbp_django_auth, yang mengirimkan data login (username dan password) ke Django. Django memverifikasi kredensial dan mengirimkan respons berupa status login dan pesan. Flutter menerima respons ini, menyimpan token autentikasi, dan menavigasi pengguna ke halaman utama jika login berhasil. Untuk memastikan komunikasi yang aman, Flutter mengonfigurasi cookie melalui CookieRequest dan memastikan seluruh aplikasi dapat mengaksesnya dengan menggunakan Provider.

- model kustom: </br>

```bash
// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int stock;
    int price;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.stock,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        stock: json["stock"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "stock": stock,
        "price": price,
        "description": description,
    };
}

```

- halaman berisi daftar item yang terdapat pada endpoint json di django:

```bash
import 'package:flutter/material.dart';
import 'package:malaccan_mobile/models/product_entry.dart';
import 'package:malaccan_mobile/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchMood(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object ProductEntry
    List<ProductEntry> listMood = [];
    for (var d in data) {
      if (d != null) {
        listMood.add(ProductEntry.fromJson(d));
      }
    }
    return listMood;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data product pada malaccan mobile.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.name}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.stock}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.price}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}")
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
```

# Checklist Tugas 9
[Back to Contents](#contents)
- [x] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- [x] Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- [x] Membuat halaman login pada proyek tugas Flutter.
- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [x] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
  - [x] Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - [x] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
  - [x] Tampilkan seluruh atribut pada model item kamu pada halaman ini.
  - [x] Tambahkan tombol untuk kembali ke halaman daftar item.
- [x] Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root folder (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  - [x] Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
  - [x] Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
  - [x] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
  - [x] Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
  - [x] Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
  - [x] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- [x] Melakukan `add`-`commit`-`push` ke GitHub.