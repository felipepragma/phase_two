import 'dart:convert';
import 'package:phase_two/data/models/model_base.dart';
import 'package:phase_two/data/models/rating_model.dart';

class ProductModel implements ModelBase<ProductModel> {
  final int? id;
  final String? title;
  final double? price;
  final String? category;
  final String? description;
  final String? image;
  final RatingModel? rating;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.category,
    this.description,
    this.image,
    this.rating,
  });

  @override
  ProductModel fromJson(String str) => ProductModel.fromMap(json.decode(str));

  @override
  String toJson() => json.encode(toMap());

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        category: json["category"],
        description: json["description"],
        image: json["image"],
        rating: RatingModel.fromMap(json["rating"])
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "category": category,
        "description": description,
        "image": image,
        "rating": rating?.toMap(),
      };

  @override
  String toString() {
    return 'ProductModel \n id: $id \n title: $title\n price: $price \n category: $category \n description: $description \n image: $image \n';
  }
}