import 'package:flutter/material.dart';
import '../car.dart';

class arabaBilgiler extends StatelessWidget {
  final car seciliAraba;

  const arabaBilgiler({Key? key, required this.seciliAraba}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(seciliAraba.marka + " İlanı ")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.network(
              seciliAraba.image,
              width: 500,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 18),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Marka",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.marka}"),
                      SizedBox(height: 18),
                      Text(
                        "Model Adı",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.modelAdi}"),
                      SizedBox(height: 18),
                      Text(
                        "Model Yılı",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.modelYili}"),
                      SizedBox(height: 18),
                      Text(
                        "Beygir Gücü",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.beygirGucu}"),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kilometre",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.km}"),
                      SizedBox(height: 18),
                      Text(
                        "Motor Hacmi",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.motorHacmi}"),
                      SizedBox(height: 18),
                      Text(
                        "Renk",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.renk}"),
                      SizedBox(height: 18),
                      Text(
                        "Fiyat",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text("${seciliAraba.fiyat}"),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}
