class Ders {
  Ders({required this.ad, required this.harfDegeri, required this.krediDegeri});

  final String ad;
  final double harfDegeri;
  final double krediDegeri;

  @override
  String toString() {
    return '$ad $harfDegeri $krediDegeri';
  }
}
