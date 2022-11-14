import 'package:demo_app_commerce/models/json.dart';
import 'package:demo_app_commerce/widgets/widget_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/json.dart';
import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  deta() async {
    var url =
        Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var convert;
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

loaddata() async {
  await Future.delayed(Duration(seconds: 2));
  var sotCurt = await rootBundle.loadString('assets/file/flutter.json');
  var decodedata = jsonDecode(sotCurt);
  var inSide = decodedata["open"];
  ProductsList.product =
      List.from(inSide).map<Item>((e) => Item.formMap(e)).toList();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Typing App',
        style: TextStyle(color: Colors.black),
      ),
    ),
    drawer: Mydrawer(),
    body: (ProductsList.product != null && ProductsList.product.isNotEmpty)
        ? ListView.builder(
            itemCount: ProductsList.product.length,
            itemBuilder: (BuildContext context, int index) {
              return AppWidgets(
                proc: ProductsList.product[index],
              );
            })
        : Center(
            child: CircularProgressIndicator(),
          ),
  );
}
