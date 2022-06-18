import 'dart:convert';

import 'package:_http/data/api/category_api.dart';
import 'package:_http/models/category.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State {
  List<Category> categories = <Category>[];
  List<Widget> categoryWidgets = <Widget>[];

  @override
  void initState() {
    getCategoriesFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Alış-veriş Sistemi",
                //metnin stilini ayarlar burada rengini beyaz yaptık
                style: TextStyle(color: Colors.white)),
            //arkaplan rengini ayarlar
            backgroundColor: Colors.purple,
            //başlığı ortalar
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              //kaydırmayı sağlar
              SingleChildScrollView(
                //kaydırmanın yatay yönde olmasını sağlar
                scrollDirection: Axis.horizontal,
                child: Row(children: categoryWidgets),
              )
            ],
          ),
        ));
  }

  void getCategoriesFromApi() async {
    CategoryApi.getCategories().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.categories =
            list.map((category) => Category.fromJson(category)).toList();
        getCategoryWidgets();
      });
    });
  }

  List<Widget> getCategoryWidgets() {
    for (int i = 0; i < categories.length; i++) {
      categoryWidgets.add(getCategoryWidget(categories[i]));
    }
    return categoryWidgets;
  }

  Widget getCategoryWidget(Category category) {
    return ElevatedButton(
      onPressed: () => null,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side:
                    const BorderSide(color: Color.fromARGB(255, 204, 0, 255)))),
      ),
      child: Text(
        category.categoryName,
        style: (const TextStyle(color: Colors.blueGrey)),
      ),
    );
  }
}
