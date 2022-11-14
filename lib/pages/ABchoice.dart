import 'package:flutter/material.dart';

import '../models/json.dart';

class catechoice extends StatelessWidget {
  final Item choice;
  const catechoice({
    Key? key,
    required this.choice,
  })  : assert(choice != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Container(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.network(choice.image),
            ),
          ),
        ));
  }
}
