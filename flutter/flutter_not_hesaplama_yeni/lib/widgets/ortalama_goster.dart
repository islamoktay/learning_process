import 'package:flutter/material.dart';
import 'package:flutter_not_hesaplama_yeni/constants/app_constants.dart';

class OrtalamaGoster extends StatelessWidget {
  final int dersSayisi;
  final double ortalama;

  const OrtalamaGoster(
      {required this.dersSayisi, required this.ortalama, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(dersSayisi > 0 ? "$dersSayisi Ders Girildi" : "Ders Seçiniz",
            style: Sabitler.ortalamaGosterBodyStyle),
        Text(
          ortalama >= 0 ? "$ortalama" : "0.0",
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          "Ortalama",
          style: Sabitler.ortalamaGosterBodyStyle,
        ),
      ],
    );
  }
}
