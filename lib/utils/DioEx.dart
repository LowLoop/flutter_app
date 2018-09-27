import 'package:dio/dio.dart';
import 'dart:io';

class DioEx extends Dio {
  /*Dio dio = new Dio();

  // 自定义配置dio实例
  dio.options.baseUrl = 'http://localhost:3000/';
  dio.options.connectTimeout = 5000;
  dio.options.receiveTimeout = 3000;

  // 传一个Options对象来配置dio对象
  static Options _options = new Options(
      baseUrl: 'http://locahost:3000/',
      connectTimeout: 5000,
      receiveTimeout: 3000
  );

  Dio dio = new Dio(_options);*/
  String baseUrl = 'http://localhost:3000/';
  int connectTimeout = 5000;
  int receiveTimeout = 3000;
}

