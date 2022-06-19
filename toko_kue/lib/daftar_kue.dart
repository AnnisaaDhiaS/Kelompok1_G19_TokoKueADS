import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_kue/login.dart';

class HomePageKue extends StatelessWidget {
  const HomePageKue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    double lebar(double value) {
      if (value >= 1027) {
        return 4;
      } else if (value < 1027 && value >= 720) {
        return 3;
      } else {
        return 2;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 18, 18),
        title: Text("TOKO KUE ADS"),
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 252, 215),
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 213, 99, 109),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 124, 18, 18),        
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
              child: Text(""),
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 146, 59, 59),
              title: Text("logout"),
              onTap: (){
                Get.off(Login());
              },
            ),

          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, right: 5, left: 5, bottom: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: GridView.count(crossAxisCount: lebar(NWidth).toInt(), children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/blackforest.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPage()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/chocolatecake.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPage2()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/redVelvett.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPage3()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/Strawberry.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPage4()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/tiramisu.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPage5()),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 252, 215),
              image: DecorationImage(
                image: AssetImage("assets/vanillacake.jpg"),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              onTap: () => Get.to(MainPAge6()),
            ),
          ),
        ]),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/blackforest.jpg"),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 30, right: 10, left: 10),
                width: NWidth - 300,
                height: NHeight,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 214),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "SEJARAH UNIK KUE BLACK FOREST",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 113, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\nPertama kali black forest tercatat dalam sejarah pada tahun 1934,oleh seorang pembuat kue asal Jerman, bernama John Martin Erich Weber.Beliau menuliskan kue black forest bukunya yang berjudul 250 Pastry Specialties and How They Originate.Di negara asalnya, black forest menjadi kue yang sangat disukai oleh semua kalangan.Nama asli black forest adalah (Kirschwässer), minuman alkohol tradisional Jerman yang terbuat dari ceri.Itulah mengapa hingga kini ceri menjadi salah satu komposisi black forest yang tidak boleh dilewatkan.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 87, 2, 2),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Fakta Kue Black Forest dan Manfaatnya Untuk Kesehatan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 113, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Komponen utama Bolu Kukus Tugu Jogja black forest adalah coklat, whipped cream, dan ceri sebagai hiasan di atasnya.\n 1. Memperbaiki suasana hati \n 2. Mengurangi risiko peyakit jantung \n 3. Sumber antioksida yang baik \n 4. Menurunkan tekanan darah \n 5. Melindungi kulit dari bahaya sinar matahari",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 87, 2, 2),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "List Harga :\nRp.160.000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 87, 2, 2),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/chocolatecake.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              width: NWidth - 300,
              height: NHeight,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "SEJARAH UNIK KUE CHOCOLATE CAKE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 113, 10, 10),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\nBanyak versi yang menceritakan asal mula brownies.  Sebuah sumber menyatakan kue ini ditemukan akibat kecelakaan, namun karena rasanya yang enak dan legit, kue ini tetap disajikan bahkan disukai di segala penjuru dunia.Sementara sumber lainnya menyatakan seorang dosen di Meine-lah yang menemukan kue coklat kehitaman ini.Awalnya sang dosen bermaksud mengajarkan para mahasiswanya cara membuat chocolate cake tapi karena lupa menambahkan bubuk pengembang, hasil kue menjadi bantat.Namun karena cita rasa yang dimiliki kue bantat tadi tetap enak,sang dosen tetap menyajikan kue ini dengan pengubahan nama.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "List Harga :\nRp.120.000",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
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

class MainPage3 extends StatefulWidget {
  const MainPage3({Key? key}) : super(key: key);

  @override
  State<MainPage3> createState() => _MainPage3State();
}

class _MainPage3State extends State<MainPage3> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/redVelvett.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              width: NWidth - 300,
              height: NHeight,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "SEJARAH UNIK KUE RED VELVET",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 113, 10, 10),
                    ),
                  ),
                  Text(
                    "\nKue red velvet berasal dari Waldorf-Astoria, sebuah restoran di sebuah hotel ternama di New York, Amerika Serikat. Menurut cerita yang beredar, seorang perempuan datang ke restoran tersebut dan terpukau dengan sajian kue yang dia makan. Saking terpesonanya dengan si kue merah ini, perempuan tersebut bahkan sampai meminta resepnya ke chef yang kemudian berakhir dengan pihak restoran memberikan resep beserta dengan tagihan 'balik jasa' sebesar USD 350 atau sekitar Rp 4,8 juta.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    "Harga : Rp.120.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
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

class MainPage4 extends StatefulWidget {
  const MainPage4({Key? key}) : super(key: key);

  @override
  State<MainPage4> createState() => _MainPage4State();
}

class _MainPage4State extends State<MainPage4> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/Strawberry.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              width: NWidth - 300,
              height: NHeight,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "SEJARAH UNIK KUE STRAWBERRY",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\nSemua jenis stroberi modern merupakan turunan dari persilangan antara kedua varietas stroberi tersebut.Amerika menamai hasil persilangan varietas stroberi pertama ini dengan (Hovey) yang dikembangkan oleh Charles Hovey pada 1834. (Hovey) kemudian ditanam silang dengan varietas lain yang kemudian dikenal dengan sebutan (Wilson) pada 1851.Persilangan yang dilakukan oleh James Wilson itu menghasilkan varietas stroberi yang dinilai lebih bagus dan sempurna dibandingkan dengan varietas lainnya.Sejak saat itu, Wilson disebut mampu mengubah stroberi yang mulanya hanya populer di Amerika dan Eropa, ke seluruh benua di dunia.Bahkan, industri stroberi meningkat hingga 50 kali lipat menjadi 100.000 hektar pada saat itu.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Harga : Rp.130.000",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
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

class MainPage5 extends StatefulWidget {
  MainPage5({Key? key}) : super(key: key);

  @override
  State<MainPage5> createState() => _MainPage5State();
}

class _MainPage5State extends State<MainPage5> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        width: NWidth,
        height: NHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/tiramisu.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              width: NWidth - 300,
              height: 900,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "SEJARAH UNIK KUE TIRAMISU",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 113, 10, 10),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\nMakanan ini pertama kali dibuat pada 1969 oleh salah satu chef di kota kecil Italia. Ketika itu, chef bersama asistennya hanya sekedar iseng untuk menemukan makanan penutup baru.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\nDari kota kecil itu, tiramisu pun semakin terkenal di dunia. Berbagai macam bentuk telah berhasil diciptakan dengan tetap melestarikan komponen dasarnya. “Dan yang membuat tiramisu terkenal karena teksturnya yang pas dan rasanya mudah diterima di manapun termasuk di Indonesia. Proses pembuatannya pun sederhana,” kata Chef Odie.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\nBukan hanya lezat, tiramisu sebagai makanan penutup ikonik Italia ini juga memiliki makna unik. Menurut Odie, tiramisu dalam bahasa Inggris mengandung makna ‘cheer me up’ atau ‘pick me up’. Makna ini berkaitan dengan dampak luapan cita rasa yang sangat menggoda setelah menikmati potongan tiramisu.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\nUntuk Magnum tiramisu sendiri, Odie menambahkan ini dibuat dengan resep pattiserrie premium dari bahan pilihan terbaik. Setiap lapisannya akan memberikan kenikmatan rasa yang tak terlupakan sejak gigitan pertama.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "List Harga :\nRp.120.000",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
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

class MainPAge6 extends StatefulWidget {
  const MainPAge6({Key? key}) : super(key: key);

  @override
  State<MainPAge6> createState() => _MainPAge6State();
}

class _MainPAge6State extends State<MainPAge6> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
        title: Text("Detail Cake",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 255, 252, 214))),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: NWidth,
                    child: Image.asset("assets/vanillacake.jpg"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 10, left: 10),
              width: NWidth - 300,
              height: 800,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "SEJARAH UNIK KUE VANILLA",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 113, 10, 10),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\nVanilla yang berasal dari bahasa Spanyol ini merupakan pemberi rasa yang dihasilkan dari tanaman genus Vanilla, terutama Vanilla planifolia. Dinamakan nama vanilla karena memiliki maknanya tersendiri.Vaina memiliki arti (polong) sebab bentuk buah vanilla adalah polong. Yang membudidayakan tanaman ini pertama kali adalah masyarakat Aztec.Masyarakat Mesoamerika menggunakan vanilla sebagai salah satu bumbu utama dalam kombinasi minuman coklat. Saat itu seorang Hernán Cortés membawa vanilla bersamaan dengan coklat ke Eropa saat pasca penjelajahannya di benua Amerika.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "\nAwalnya usaha untuk membudidayakan vanilla ini masih sangat sulit karena prosesnya membutuhkan lebah melipona yang hanya ada di Amerika Tengah. Seorang pakar botani asal Belgia yang pertama kali menemukan hal ini dan berusaha mencari cara untuk melakukan penyerbukan vanilla secara buatan.Namun hasil akhirnya tidak begitu memuaskan. Pada tahun 1841, metode penyerbukan buatan secara sederhana ditemukan oleh seorang budak di pulau Réunion oleh Edmond Albius,  dan menyebabkan vanilla menyebar luas dengan membudidayakan.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "List Harga :\nRp.120.000",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 87, 2, 2),
                    ),
                    textAlign: TextAlign.center,
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
