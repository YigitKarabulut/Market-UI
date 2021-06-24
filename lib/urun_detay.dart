import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  const UrunDetay({Key key, this.isim, this.fiyat, this.resimYolu, this.mevcut}) : super(key: key);
  final String isim;
  final String fiyat;
  final String resimYolu;
  final bool mevcut;


   _alert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: Text(
              "Ürün sepetinize eklenmiştir",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                child: Text("Tamam",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          IconButton(
              icon: Icon(

                Icons.arrow_back_ios,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.pop(context);
              }),
          Center(
            child: Stack(
              children: <Widget>[
                Hero(


                  child: Image.network(
                      resimYolu),
                  tag: resimYolu,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Column(
            children: [
              Text(
                isim,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                fiyat,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          FlatButton(
            onPressed: () { mevcut ? _alert(context) : null ;
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                color: mevcut ? Theme.of(context).primaryColor : Colors.red,
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: Center(
                  child: Text(mevcut ?
                "Sepete Ekle": "Stokta yok",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
