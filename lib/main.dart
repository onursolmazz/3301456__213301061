import 'package:araba_satis/Screens/car_add.dart';
import 'package:araba_satis/Screens/car_info.dart';
import 'package:flutter/material.dart';
import 'package:araba_satis/car.dart';
import 'package:araba_satis/Screens/car_value.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Araba İlanları",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<car> arabalar = [
    car(
        marka: "BMW",
        modelAdi: "M5",
        modelYili: 2020,
        beygirGucu: 510,
        km: 9800,
        motorHacmi: 2993,
        renk: "Lacivert",
        fiyat: 6000000,
        image:
        "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20201214033854_BMW-M5-Comp-1.jpg"),
    car(
        marka: "Audi",
        modelAdi: "A3",
        modelYili: 2017,
        beygirGucu: 116,
        km: 200000,
        motorHacmi: 1598,
        renk: "Siyah",
        fiyat: 700000,
        image:
        "https://www.otokokpit.com/wp-content/uploads/2016/10/2017-yeni-audi-a3-turkiye-fiyati-3.jpg"),
    car(
        marka: "Mercedes-Benz",
        modelAdi: "C200d",
        modelYili: 2015,
        beygirGucu: 136,
        km: 101000,
        motorHacmi: 1598,
        renk: "Beyaz",
        fiyat: 2000000,
        image:
        "https://arbstorage.mncdn.com/ilanfotograflari/2020/10/06/15651381/5bc168da-5cb8-4e02-a3c1-29d7f9fb9500_image_for_silan_15651381_580x435.jpg"),
    car(
        marka: "Renault",
        modelAdi: "Megane",
        modelYili: 2017,
        beygirGucu: 110,
        km: 111000,
        motorHacmi: 1461,
        renk: "Beyaz",
        fiyat: 600000,
        image:
        "https://resim.epey.com/69959/m_2017-renault-megane-sedan-1-5-dci-110-bg-icon-1.jpg"),
    car(
        marka: "Citroen",
        modelAdi: "C-Elysee",
        modelYili: 2020,
        beygirGucu: 100,
        km: 90000,
        motorHacmi: 1499,
        renk: "Gri",
        fiyat: 500000,
        image:
        "https://www.oopscars.com/wp-content/uploads/2017_CITROEN_C-ELYSEE_pic-3.jpg"),
    car(
        marka: "Ford",
        modelAdi: "Focus",
        modelYili: 2016,
        beygirGucu: 120,
        km: 180000,
        motorHacmi: 1499,
        renk: "Mavi",
        fiyat: 400000,
        image:
        "https://arbstorage.mncdn.com/ilanfotograflari/2023/01/03/21683734/3a126e66-b3e8-4a66-9db2-3cb15067c3f9_image_for_silan_21683734_580x435.jpg"),
    car(
        marka: "Peugeot",
        modelAdi: "508",
        modelYili: 2022,
        beygirGucu: 130,
        km: 26000,
        motorHacmi: 1499,
        renk: "Kırmızı",
        fiyat: 1000000,
        image:
        "https://www.sifiraracal.com/resim/haber/9384/2022-model-peugeot-508-ozellikleri-ve-fi2.jpg"),
    car(
        marka: "Honda",
        modelAdi: "Civic",
        modelYili: 2016,
        beygirGucu: 125,
        km: 11100,
        motorHacmi: 1597,
        renk: "Beyaz",
        fiyat: 700000,
        image:
        "https://www.otomotivturkiye.com/uploads/monthly_2020_06/118639744_2016HondaCivicnceleme.jpg.725568b232629a53109827b886462c5b.jpg"),
    car(
        marka: "Jaguar",
        modelAdi: "XF",
        modelYili: 2016,
        beygirGucu: 180,
        km: 65000,
        motorHacmi: 1999,
        renk: "Füme",
        fiyat: 1200000,
        image: "https://i.ytimg.com/vi/X-vQpzWxyOk/maxresdefault.jpg"),
    car(
        marka: "Kia",
        modelAdi: "Ceed",
        modelYili: 2015,
        beygirGucu: 136,
        km: 210000,
        motorHacmi: 1582,
        renk: "Siyah",
        fiyat: 400000,
        image:
        "https://arabamkacyakar.com/public/website/template1/upload/safe/bigw_kia-ceed-2012-2015_5c5049666c6a2.jpg"),
    car(
        marka: "Toyota",
        modelAdi: "Corolla",
        modelYili: 2015,
        beygirGucu: 90,
        km: 165000,
        motorHacmi: 1364,
        renk: "Beyaz",
        fiyat: 500000,
        image:
        "https://upload.wikimedia.org/wikipedia/commons/4/4f/2015_Toyota_Corolla_%28ZRE172R%29_Ascent_sedan_%282015-11-11%29_01.jpg")
  ];

  car seciliAraba = car(
      marka: "",
      modelAdi: "",
      modelYili: 0,
      beygirGucu: 0,
      km: 0,
      motorHacmi: 0,
      renk: "",
      fiyat: 0,
      image: "");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Araba İlanları'),
      ),
      body: buildbody(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Hakkımızda",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('İnstagram'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/09/17/52/instagram-1581266__340.jpg"),
              ),
              subtitle: Text("onurss"),
              trailing: Icon(Icons.add),
              onTap: () {
                print("onurrss");
              },
            ),
            ListTile(
              title: Text('GitHub'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://1000logos.net/wp-content/uploads/2018/11/GitHub-logo.jpg"),
              ),
              subtitle: Text("onursolmazz"),
              trailing: Icon(Icons.add),
              onTap: () {
                print("github.com/onursolmazz");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbody() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 4),
          child: Text(
            "Hoş Geldin!!!",
            style: TextStyle(
              fontSize: 34,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic, // İtalik
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 4),
          child: Text(
            "Piyasaya göre uygun araba mı bakıyorsun ?",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: arabalar.length,
              itemBuilder: (BuildContext context, int index_sayisi) {
                return ListTile(
                  title: Text(arabalar[index_sayisi].marka +
                      " " +
                      arabalar[index_sayisi].modelAdi),
                  subtitle: Text("Araç Fiyatı :" +
                      arabalar[index_sayisi].fiyat.toString() +
                      " TL"),
                  leading: CircleAvatar(
                      backgroundImage:
                      NetworkImage(arabalar[index_sayisi].image)),
                  trailing: Icon(Icons.arrow_forward_outlined),
                  onTap: () {
                    this.seciliAraba = arabalar[index_sayisi];

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              arabaBilgiler(
                                  seciliAraba: arabalar[index_sayisi]),
                        ));
                  },
                );
              }),
        ),
        Text(seciliAraba.marka.toString() +
            " " +
            seciliAraba.modelAdi.toString()),
        Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 3.0,
                    ),
                    Text("İlan Ver"),
                    Icon(Icons.add),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              arabaEkle(arabalar.cast<car>())))
                      .then((value) => setState(() {}));
                },
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 3.0,
                    ),
                    Text("Ortalama araç değeri hesaplama"),
                    Icon(Icons.update),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => arabaDegeri()),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}