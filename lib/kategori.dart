import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_application/urun_detay.dart';
import 'package:market_application/urun_detay.dart';


class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> _kategoriList;

  @override
  void initState() {
    super.initState();
    _kategoriList = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.teal,
      ),
    ];
    if (widget.kategori == "Temel Gıda") {
      _kategoriList = [
        urunKarti(
          "Komili Ege Sızma Zeytinyağı 1000 Ml",
          "56,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/04133425/04133425-325397.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Muz Yerli Kg",
          "11,90₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/27270000/muz-yerli-kg-9d3d01.jpg",
          mevcut: false,
        ),
        urunKarti(
          "İçim Taze Kaşar Peyniri 700 G",
          "34,75₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/10108647/10108647-b9bf91.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Migros Uht Yağlı Süt 1 L",
          "4,75₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/11011520/11011520-17b4ab.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Yumurtacım 15'li L Boy Yumurta (63-72 G)",
          "11,90₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/20001975/20001975-cdebd9.jpg",
         mevcut: true,
        ),
        urunKarti(
          "Migros Tam Yağlı Homojenize Yoğurt 1.5 Kg",
          "8,50₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/12501887/12501887-df360a.jpg",
          mevcut: true,
        ),
        urunKarti(
          "İçim Şef %35 Yağlı Krema 200 Ml",
          "7,75₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/11552590/11552590-9bdb84.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Migros Baldo Pirinç 1000 G",
          "12,25",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/01011179/01011179-ff1326.jpg",
         mevcut: true,
        ),
        urunKarti(
          "Migros Toz Şeker 1 Kg",
          "5,45₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/03312848/03312848-0745db.jpg",
         mevcut: true,
        ),
        urunKarti(
          "Filiz Fiyonk Makarna 500 G",
          "3,45₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/05030354/05030354-8ec20e.jpg",
         mevcut: true,
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      _kategoriList = [
        urunKarti(
          "Torku Tam Çikolatam Bisküvi 279 G",
          "6,25₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/07010182/07010182-84e389.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Ülker Çikolatalı Gofret 180 G",
          "5,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/07160060/07160060-fc5cf7.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Eti Burçak Bisküvi 131 G",
          "2₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/07010112/07010112-3c6818.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      _kategoriList = [
        urunKarti(
          "Abant Doğal Kaynak Suyu 5 L",
          "2,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/08060192/abant-dogal-kaynak-suyu-5-l-c4a03e.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Coca-Cola 2X1 L",
          "9,10₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/08011869/08011869-abb757.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Migros Ayran 1500 Ml",
          "5,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/11559376/migros-ayran-1500-ml-84c114.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Sırma Doğal Maden Suyu 6x200 Ml Cam",
          "7,90₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/08040900/08040900-e94f95.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      _kategoriList = [
        urunKarti(
          "Domestos Çamaşır Suyu Dağ Esintisi 750 Ml",
          "8,35₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/30560515/30560515-64bccf.png",
          mevcut: true,
        ),
        urunKarti(
          "Migros 3X72'li Islak Havlu 216 G",
          "17,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/31030019/31030019-9d8057.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Perwoll Yenilenen 3D Siyah Etki 50 Yıkama 3 L",
          "25,90₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/30551827/30551827-a63910.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Migros Temizlik Bezi 5'li",
          "4,95₺",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/31163618/31163618-283245.jpg",
          mevcut: false,
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              fiyat,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      //yatayda kac tane ızgara elemanı olmasaı gerektiğini belirttik
      mainAxisSpacing: 12.0,
      // yukarıdan asagı bosluk ekledik aralarına
      crossAxisSpacing: 12.0,
      //yan yana boşluk ekledik aralarına
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      //eni boyuna eşit olması için
      children: _kategoriList,
    );
  }
}
