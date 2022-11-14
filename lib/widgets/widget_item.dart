import 'package:demo_app_commerce/models/json.dart';
import 'package:flutter/material.dart';

import '../pages/cateloge.dart';

class AppWidgets extends StatelessWidget {
  final Item proc;

  const AppWidgets({Key? key, required this.proc})
      : assert(proc != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/Cateloges");
          },
          leading: Image.network(
            proc.image,
            height: 200,
          ),
          title: Text(proc.name),
          subtitle: Text(proc.desc),
          trailing: Text("\$${proc.price}"),
        ),
      ),
    );
  }
}
