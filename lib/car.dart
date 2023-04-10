class car {

  final String marka;
  final String modelAdi;
  final int modelYili;
  final int beygirGucu;
  final double km;
  final double motorHacmi;
  final String renk;
  final double fiyat;
  final String image;

  set motor_hacmi(double motor_hacmi) {}
  set beygirGucu(int beygirGucu) {}
  set marka(String marka) {}
  set model_yili(int model_yili) {}
  set modelAdi(String modelAdi) {}
  set km(double km) {}
  set fiyat(double fiyat) {}
  set renk(String renk) {}

  String getImage() => image;
  set image(String value) => image = value;

  car({
    required this.marka,
    required this.modelAdi,
    required this.modelYili,
    required this.beygirGucu,
    required this.km,
    required this.motorHacmi,
    required this.renk,
    required this.fiyat,
    required this.image,
  });
}