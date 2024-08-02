import 'package:flutter/material.dart';
import 'package:multivendor_store_app/api/stock.dart';

class ListStocks extends StatelessWidget {
  final List<Stock> stocks;

  const ListStocks({super.key, required this.stocks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: stocks.map((stock) {
        return ListTile(
          title: Text(stock.id.toString()),
        );
      }).toList(),
    );
  }
}
