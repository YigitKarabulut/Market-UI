import 'package:flutter/material.dart';
import 'package:market_application/sepetim.dart';
import 'package:market_application/urunler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YGT Market',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Widget> _icerikler;
  int _aktifIcerikNo = 0;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      Uurunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'YGT Market',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Yiğit"),
              accountEmail: Text("yigitkarabulut51@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://lh3.googleusercontent.com/ogw/ADea4I7PTm5f3iM2B8gSJhWbGRVXSju2yiNry50gNivt=s83-c-mo"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(title: Text("Siparişlerim"),onTap: (){},),
            ListTile(title: Text("İndirim Kuponlarım"),onTap: (){},),
            ListTile(title: Text("Ayarlar"),onTap: (){},),
            ListTile(title: Text("Çıkış"),onTap: (){Navigator.pop(context);},),

          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Ürünler")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Sepetim")),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
