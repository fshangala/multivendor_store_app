import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multivendor_store_app/api/sdk.dart';
import 'package:multivendor_store_app/api/stock.dart';
import 'package:multivendor_store_app/components/list_stocks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  var sdk = APISDK();
  List<Stock> stocks = [];

  @override
  void initState() {
    super.initState();
    // sdk.listStocks().then((data) {
    //   stocks = data;
    //   log(data.toString());
    // }).catchError((reason) {
    //   log(reason.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MStore'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: NavigationDrawer(
        children: [
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text("Home"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.shopping_bag),
            label: Text("Shopping"),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.person),
            label: Text("Profile"),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: List.generate(
              10,
              (index) {
                return ListTile(
                  leading: Image.network('https://picsum.photos/250?image=9'),
                  title: const Text("Product Title - Variant name"),
                  subtitle: Text(
                      "\$${(Random().nextDouble() * 1000 + 10).toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      //
                    },
                  ),
                  onTap: () {
                    //
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
