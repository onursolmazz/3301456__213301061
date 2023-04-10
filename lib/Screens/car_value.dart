import 'package:flutter/material.dart';


class arabaDegeri extends StatefulWidget {
  _arabaDegeriState createState() => _arabaDegeriState();
}

class _arabaDegeriState extends State<arabaDegeri> {
  final TextEditingController km1 = TextEditingController();
  final TextEditingController yil1 = TextEditingController();
  final TextEditingController beygirgucu1 = TextEditingController();
  final TextEditingController motorhacmi1 = TextEditingController();

  int? kmm;
  int? yil;
  int? beygir;
  int? motorhacmi;
  int fiyat = 0;

  void calculatePrice() {
    setState(() {
      kmm = int.parse(km1.text);
      yil = int.parse(yil1.text);
      beygir = int.parse(beygirgucu1.text);
      motorhacmi = int.parse(motorhacmi1.text);

      fiyat = (yil! * 100 + beygir! * 1000 + motorhacmi! * 50 / yil! * 10).toInt();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Araba Değer Hesaplayıcı"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: km1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Kilometre Girin :",
              ),
            ),
            TextField(
              controller: yil1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Model Yılı Girin : "),
            ),
            TextField(
              controller: beygirgucu1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Beygir Gücü Girin :",
              ),
            ),
            TextField(
              controller: motorhacmi1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Motor Hacmi Girin :",
              ),
            ),
            ElevatedButton(
              child: Text("Hesapla"),
              onPressed: calculatePrice,
            ),
            SizedBox(height: 16.0),
            Text(
              "Hesaplandı: $fiyat TL",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Ortalama Fiyatlardır Gerçeği Yansıtmayabilir...")
          ],
        ),
      ),
    );
  }
}
