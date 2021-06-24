import 'package:flutter/material.dart';
import 'package:market_application/kategori.dart';

class Uurunler extends StatefulWidget {
  const Uurunler({Key key}) : super(key: key);

  @override
  _UurunlerState createState() => _UurunlerState();
}

class _UurunlerState extends State<Uurunler>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
            controller: _tabController,
            labelColor: Theme.of(context).primaryColor, //yazı rengi
            indicatorColor: Theme.of(context).primaryColor, //altta seçili çizgi rengi
            unselectedLabelColor: Colors.grey, //seçili değilken yazı rengi
            isScrollable: true, //'false' olursa yazılar alt alta olur fakat 'true' oldugu içib yana kaydırmalı oldu
            labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Text("Temel Gıda"),
              ),
              Tab(
                child: Text("Şekerleme"),
              ),
              Tab(
                child: Text("İçecekler"),
              ),
              Tab(
                child: Text("Temizlik"),
              ),
            ]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Kategori(kategori: "Temel Gıda",),
              Kategori(kategori: "Şekerleme",),
              Kategori(kategori: "İçecekler",),
              Kategori(kategori: "Temizlik",),
            ],
          ),
        ),
      ],
    );
  }
}
