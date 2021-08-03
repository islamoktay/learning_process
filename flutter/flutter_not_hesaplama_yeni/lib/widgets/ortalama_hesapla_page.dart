import 'package:flutter/material.dart';
import 'package:flutter_not_hesaplama_yeni/constants/app_constants.dart';
import 'package:flutter_not_hesaplama_yeni/helper/data_helper.dart';
import 'package:flutter_not_hesaplama_yeni/widgets/ortalama_goster.dart';

class OrtalamaHesapla extends StatefulWidget {
  const OrtalamaHesapla({Key? key}) : super(key: key);

  @override
  _OrtalamaHesaplaState createState() => _OrtalamaHesaplaState();
}

class _OrtalamaHesaplaState extends State<OrtalamaHesapla> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double secilenDeger = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            Sabitler.baslik,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: OrtalamaGoster(dersSayisi: 5, ortalama: 2.85),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text("Liste Buraya Gelecek"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHarfler(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3),
        hintText: "Matematik",
        border: OutlineInputBorder(
          borderRadius: Sabitler.borderGenel,
        ),
      ),
    );
  }

  _buildHarfler() {
    return Container(
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderGenel,
      ),
      child: DropdownButton<double>(
        value: secilenDeger,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        onChanged: (deger) {
          setState(() {
            secilenDeger = deger!;
          });
        },
        underline: Container(),
        items: DataHelper.tumDersHarfleri(),
      ),
    );
  }
}
