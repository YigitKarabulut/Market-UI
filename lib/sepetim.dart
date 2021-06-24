import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
          child: Center(
            child: Text(
              "Sepetim",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,

              ),
            ),
          ),
        ),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 adet x 3.50 ₺"),
          trailing: Text("7 ₺"),
        ),
        ListTile(
          title: Text("Meyve Suyu"),
          subtitle: Text("1 adet x 2 ₺"),
          trailing: Text("2 ₺"),
        ),
        ListTile(
          title: Text("Islak Kek"),
          subtitle: Text("2 adet x 5.50 ₺"),
          trailing: Text("11 ₺"),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,25.0,0.0),
              child: Column(
                children: <Widget>[

                  Text("Toplam Tutar",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    )
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "20 ₺",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
       
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
