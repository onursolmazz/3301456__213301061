import 'package:flutter/material.dart';
import '../car.dart';


class arabaEkle extends StatefulWidget {
  List<car>? arabalar;

  arabaEkle(this.arabalar);

  State<StatefulWidget> createState() {
    return _arabaEkleState();
  }
}

class _arabaEkleState extends State<arabaEkle> {
  var formAnahtari = GlobalKey<FormState>();
  car eklenenAraba = car(
      marka: "",
      modelAdi: "",
      modelYili: 0,
      beygirGucu: 0,
      km: 0,
      motorHacmi: 0,
      renk: "",
      fiyat: 0,
      image:
          "https://www.shutterstock.com/image-vector/car-icon-vector-isolated-illustration-260nw-1390390070.jpg");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlan Ver"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: formAnahtari,
          child: Column(
            children: <Widget>[
              buildMarka(),
              buildModel(),
              buildModelYili(),
              buildBeygirGucu(),
              buildKm(),
              buildMotorHacmi(),
              buildRenk(),
              buildFiyat(),
              //  buildImage(),
              buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMarka() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.directions_car),
        labelText: "Araç Markası",
        hintText: "Örneğin BMW,",
      ),
      onSaved: (String? value) {
        eklenenAraba.marka = value!;
      },
    );
  }

  Widget buildModel() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.directions_car),
        labelText: "Araç Modeli",
        hintText: "Örneğin M3,",
      ),
      onSaved: (String? value) {
        eklenenAraba.modelAdi = value!;
      },
    );
  }

  Widget buildModelYili() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.format_list_numbered),
        labelText: "Araç Model Yılı",
        hintText: "Örneğin 2020,",
      ),
      onSaved: (String? value) {
        eklenenAraba.model_yili = value! as int;
      },
    );
  }

  Widget buildBeygirGucu() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.car_crash),
        labelText: "Aracın Beygir Gücü",
        hintText: "Örneğin 100,",
      ),
      onSaved: (String? value) {
        eklenenAraba.model_yili = int.parse(value!);
      },
    );
  }

  Widget buildKm() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.add_road),
        labelText: "Aracın Kilometresi",
        hintText: "Örneğin 100000,",
      ),
      onSaved: (String? value) {
        eklenenAraba.km = double.parse(value!);
      },
    );
  }

  Widget buildMotorHacmi() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.engineering),
        labelText: "Aracın Motor Hacmi",
        hintText: "Örneğin 1500,",
      ),
      onSaved: (String? value) {
        eklenenAraba.motor_hacmi = double.parse(value!);
      },
    );
  }

  Widget buildRenk() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.colorize),
        labelText: "Aracın Rengi",
        hintText: "Örneğin Beyaz,",
      ),
      onSaved: (String? value) {
        eklenenAraba.renk = value!;
      },
    );
  }

  Widget buildFiyat() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.attach_money),
        labelText: "Aracın Fiyatı",
        hintText: "Örneğin 1000000,",
      ),
      onSaved: (String? value) {
        eklenenAraba.fiyat = double.parse(value!);
      },
    );
  }

  Widget buildImage() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.image),
        labelText: "Araç Resmi için link bırakın",
        hintText: ".jpg uzantılı olmalı,",
      ),
      onSaved: (String? value) {
        eklenenAraba.image = value!;
      },
    );
  }

  Widget buildButton() {
    return ElevatedButton(
      child: Text("İlan Vermek İçin Tıklayın"),
      onPressed: () {
        formAnahtari.currentState?.save();
        widget.arabalar?.add(eklenenAraba);
        Navigator.pop(context);
        setState(() {});
      },
    );
  }
}
