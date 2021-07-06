import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset(
            'assets/images/' + listelenenBurc.burcKucukResim,
          ),
        ),
        title: Text(
          listelenenBurc.burcAdi,
          style: myTextStyle.headline5,
        ),
        subtitle: Text(
          listelenenBurc.burcTarihi,
          style: myTextStyle.subtitle1,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
      ),
    );
  }
}
