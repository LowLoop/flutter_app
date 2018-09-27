import 'package:flutter/material.dart';
import 'package:flutter_app/ShoppingCartDemo/ShoppingList.dart';
import 'package:flutter_app/NetaseCloudMusic/Layout.dart';
import 'package:flutter_app/ShoppingCartDemo/Product.dart';
import 'package:flutter_app/entity/CatList.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';

void main() => runApp(new HomeClass());

class HomeClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'low',
      theme: new ThemeData(
        // 94, 196, 154
        primaryColor: Colors.greenAccent
      ),
      home: new Layout(),
    );
  }
}
