
import 'dart:convert';

List<String> categoriesModelFromMap(String str) => List<String>.from(json.decode(str).map((x) => x));

String categoriesModelToMap(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
