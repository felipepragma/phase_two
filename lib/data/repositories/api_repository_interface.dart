import 'package:dartz/dartz.dart';
import 'package:phase_two/data/datasource/api_error.dart';
import 'package:phase_two/data/models/product_model.dart';

abstract class ApiRepositoryInterface {
 Future<Either<ApiError, List<ProductModel>>> getAllProducts();
 Future<Either<ApiError, ProductModel>> getProductById(int id);
 Future<Either<ApiError, List<String>>> getCategories();
}