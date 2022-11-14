import 'package:demo_app_commerce/models/json.dart';
import 'package:demo_app_commerce/pages/ABchoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cateLoges extends StatelessWidget {
  const cateLoges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: ProductsList.product.length,
        itemBuilder: (BuildContext context, int index) {
          return catechoice(choice: ProductsList.product[index]);
        },
      ),
    );
  }
}
