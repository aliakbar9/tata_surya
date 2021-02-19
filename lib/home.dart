import 'package:flutter/material.dart';
import 'package:tata_surya_app/detail.dart';

class Home extends StatelessWidget {
  List<String> title = [
    'pluto',
    'Matahari',
    'Mars',
    'Jupiter',
    'Venus',
    'MerkuRius',
    'Saturnus',
    'Neptunus',
    'Uranus',
    'Bumi',

  ];

  List<String> image = [
    'https://asset.kompas.com/crops/U_NOaxfWIkJAPrPyJ1VcnEb26bs=/70x0:655x390/1070x550/data/photo/2015/07/14/2205439pluto-cinta780x390.JPG',
    'https://riaupos.co/thumb/a1b81bf-foto1.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg',
    'https://www.harapanrakyat.com/wp-content/uploads/2020/05/Foto-Planet-Jupiter-Paling-Detail.jpg',
    'https://asset.kompas.com/crops/RP6TT7e5cwHehD5ow67RupKzvqs=/0x56:1000x722/750x500/data/photo/2020/09/16/5f61eb0d094db.jpg',
    'https://i1.wp.com/langitselatan.com/wp-content/uploads/2020/05/Merkurius.jpg?resize=800%2C450&ssl=1',
    'https://static.republika.co.id/uploads/images/inpicture_slide/teleskop-hubble-mengungkap-gambar-saturnus-secara-detail-dengan-bulan_200727071147-404.jpg',
    'https://cdn.idntimes.com/content-images/community/2019/06/82-carousel-neptune-1-c24e2f730c20f03f23dc252ba06c7600_600x400.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg',
    'https://cdn1-production-images-kly.akamaized.net/fWsHHKt1F84kebsRPvv5WiIh7zg=/640x640/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2956862/original/019074300_1572758540-bumi.jpg',
  ];

  List<String> tentang = [
    'Pluto adalah planet katai di sabuk Kuiper dan objek trans-Neptunus pertama yang ditemukan. Pluto merupakan planet katai terbesar dan bermassa terbesar kedua di Tata Surya dan benda terbesar kesembilan dan bermassa terbesar kesepuluh yang mengorbit Matahari secara langsung',
    'Matahari atau Surya adalah bintang di pusat tata surya. Bentuknya nyaris bulat dan terdiri dari plasma panas bercampur medan magnet. Diameternya sekitar 1.392.684 km, kira-kira 109 kali diameter Bumi, dan massanya mewakili kurang lebih 99,86 % massa total tata surya.',
    'Mars adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai "planet merah" karena tampak dari jauh berwarna kemerah-kemerahan. Ini disebabkan oleh keberadaan besi(III) oksida di permukaan planet Mars',
    'Jupiter adalah planet terdekat kelima dari Matahari setelah Merkurius, Venus, Bumi, dan Mars. Planet ini juga merupakan planet terbesar di Tata Surya. Jupiter merupakan raksasa gas dengan massa seperseribu massa Matahari dan dua setengah kali jumlah massa semua planet lain di Tata Surya.',
    'Venus adalah planet terdekat kedua dari Matahari setelah Merkurius. Planet ini mengorbit Matahari selama 224,7 hari Bumi. Venus tidak memiliki satelit alami dan dinamai dari dewi cinta dan kecantikan dalam mitologi Romawi.',
    'Merkurius adalah planet terkecil di Tata Surya sekaligus yang terdekat dari Matahari. Periode revolusi planet ini merupakan yang terpendek dari semua planet di Tata Surya, yakni 87,79 hari. Planet ini dinamai menurut nama dewa Merkurius, sang pembawa pesan para dewa dalam mitologi Romawi.',
    'Saturnus adalah planet keenam dari Matahari dan merupakan planet terbesar kedua di Tata Surya setelah Jupiter. Saturnus juga merupakan sebuah raksasa gas yang memiliki radius rata-rata sekitar 9 kali radius rata-rata Bumi',
    'Neptunus merupakan planet terjauh jika ditinjau dari Matahari. Planet ini dinamai dari dewa lautan Romawi. Neptunus merupakan planet terbesar keempat berdasarkan diameter dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih besar daripada Uranus.',
    'Uranus adalah planet ketujuh dari Matahari. Uranus merupakan planet yang memiliki jari-jari terbesar ketiga sekaligus massa terbesar keempat di Tata Surya. Uranus juga merupakan satu-satunya planet yang namanya berasal dari tokoh dalam mitologi Yunani, dari versi Latinisasi nama dewa langit Yunani Ouranos.',
    'Bumi adalah planet ketiga dari Matahari yang merupakan planet terpadat dan terbesar kelima dari delapan planet dalam Tata Surya. Bumi juga merupakan planet terbesar dari empat planet kebumian Tata Surya. Bumi terkadang disebut dengan dunia atau Planet Biru.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Tata Surya",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(title.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Detail(
                                title: title[index], tentang: tentang[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.0, vertical: 23.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          image[index],
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(title[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            );
          })),
    );
  }
}