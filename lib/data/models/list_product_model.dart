
import 'dart:convert';
import 'package:phase_two/data/models/product_model.dart';

List<ProductModel> productsModelFromMap(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromMap(x)));

String productsModelToMap(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));
