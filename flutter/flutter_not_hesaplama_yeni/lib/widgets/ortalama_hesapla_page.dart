import 'package:flutter/material.dart';
import 'package:flutter_not_hesaplama_yeni/constants/app_constants.dart';
import 'package:flutter_not_hesaplama_yeni/helper/data_helper.dart';
import 'package:flutter_not_hesaplama_yeni/model/ders.dart';
import 'package:flutter_not_hesaplama_yeni/widgets/ders_listesi.dart';
import 'package:flutter_not_hesaplama_yeni/widgets/harf_dropdown_widget.dart';
import 'package:flutter_not_hesaplama_yeni/widgets/kredi_dropdown_widget.dart';
import 'package:flutter_not_hesaplama_yeni/widgets/ortalama_goster.dart';

class OrtalamaHesapla extends StatefulWidget {
  const OrtalamaHesapla({Key? key}) : super(key: key);

  @override
  _OrtalamaHesaplaState createState() => _OrtalamaHesaplaState();
}

class _OrtalamaHesaplaState extends State<OrtalamaHesapla> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double secilenHarfDegeri = 4;
  double secilenKrediDegeri = 1;
  String girilenDersAdi = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: OrtalamaGoster(
                    dersSayisi: DataHelper.tumEklenenDersler.length,
                    ortalama: DataHelper.ortalamaHesapla()),
              ),
            ],
          ),
          Expanded(
            child: DersListesi(
              onElemanCikarildi: (index) {
                DataHelper.tumEklenenDersler.removeAt(index);
                setState(() {});
              },
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
          Padding(
            padding: Sabitler.yatayPaddingSekiz,
            child: _buildTextFormField(),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: Sabitler.yatayPaddingSekiz,
                  child: HarfDropdownWidget(
                    onHarfSecildi: (harf) {
                      secilenHarfDegeri = harf;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: Sabitler.yatayPaddingSekiz,
                  child: KrediDropdownWidget(
                    onKrediSecildi: (kredi) {
                      secilenKrediDegeri = kredi;
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: _dersEkleveOrtalamaHesapla,
                icon: Icon(Icons.arrow_forward_ios_sharp),
                color: Sabitler.anaRenk,
                iconSize: 30,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField() {
    return TextFormField(
      onSaved: (deger) {
        setState(() {
          girilenDersAdi = deger!;
        });
      },
      validator: (s) {
        if (s!.length <= 0) {
          return "Ders adını giriniz";
        } else
          return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3),
        hintText: "Matematik",
        border: OutlineInputBorder(
          borderRadius: Sabitler.borderGenel,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  void _dersEkleveOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var eklenecekDers = Ders(
          ad: girilenDersAdi,
          harfDegeri: secilenHarfDegeri,
          krediDegeri: secilenKrediDegeri);
      DataHelper.dersEkle(eklenecekDers);
      setState(() {});
    }
  }
}
