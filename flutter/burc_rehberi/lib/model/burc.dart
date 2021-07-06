class Burc {
  Burc(this._burcAdi, this._burcDetayi, this._burcTarihi, this._burcKucukResim,
      this._burcBuyukResim);

  final String _burcAdi;
  final String _burcDetayi;
  final String _burcTarihi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  @override
  String toString() {
    return '$_burcAdi - $_burcBuyukResim';
  }
}
