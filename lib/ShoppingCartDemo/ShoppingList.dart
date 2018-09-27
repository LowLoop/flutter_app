/*
import 'package:flutter/material.dart';
import 'package:flutter_app/ShoppingCartDemo/Product.dart';
import 'package:flutter_app/ShoppingCartDemo/ShoppingListItem.dart';
import 'package:flutter_app/utils/DioEx.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'dart:convert';
import 'package:flutter_app/ShoppingCartDemo/Product.dart';
import 'package:flutter_app/entity/CatList.dart';
import 'dart:async';

class ShoppingList extends StatefulWidget {
  // ShoppingList({Key key, this.products}) : super(key : key);
  final List<CatList> catList = new List<CatList>();
  final List<Product> productList = new List<Product>();

  @override
  _ShoppingListState createState () => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  List<Product> products = new List<Product>();
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if(inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  Future<Null> _refresh () {
    setState(() {});
  }

  void fetchData() async {
    Dio _fetch = new Dio();
    Response res = await _fetch.get('http://localhost:3000/playlist/catlist');
    Map<String, dynamic> dataMap = res.data;
    List subList = dataMap['sub'];
    final List<Product> tmpList = new List<Product>();
    for (var item in subList) {
      tmpList.add(new Product(name: item['name']));
    }
    setState(() {
      products = tmpList;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      */
/*appBar: new AppBar(
        title: new Text('列表'),
      ),*//*

      body: new Center(
        child: new Container(
          // margin: const EdgeInsets.all(10.0),
          color: const Color.fromRGBO(236, 82, 129, 0.7),
          child: new TabBar(tabs: null),
        ),
      ),
      */
/*body: RefreshIndicator(
        onRefresh:_refresh,
        child: new ListView(
          physics: const AlwaysScrollableScrollPhysics(), // 保证listView在任何时候都能滚动
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: products.map((Product product) {
            return new ShoppingListItem(
              product: product,
              inCart: _shoppingCart.contains(product),
              onCartChanged: _handleCartChanged,
            );
          }).toList(),
        ),
      )*//*

    );
  }
}*/
