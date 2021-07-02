import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Sliver App Bar'),
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: true,
        ),
      ],
    );
  }
}
