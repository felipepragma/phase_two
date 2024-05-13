import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:phase_two/data/datasource/api_datasource_interface.dart';
import 'package:phase_two/data/datasource/api_error.dart';
import 'package:phase_two/data/datasource/api_url_base.dart';
import 'package:phase_two/data/datasource/either_api.dart';
import 'package:phase_two/data/models/list_categories_model.dart';
import 'package:phase_two/data/models/list_product_model.dart';
import 'package:phase_two/data/models/product_model.dart';

class ApiDatasourceImplements extends ApiDatasourceInterface {

  final http.Client _client;

  ApiDatasourceImplements({required http.Client client}) : _client = client;
  
  @override
  Future<Either<ApiError, List<ProductModel>>> getAllProducts() async {
    final response = get(ApiUrlBase.getAllProducts, _client, (json) => productsModelFromMap(json));
    return response;
  }

  @override
  Future<Either<ApiError, ProductModel>> getProductById(int id) async {
    final response = get(ApiUrlBase.getProductById(id), _client, (json) => ProductModel().fromJson(json));
    return response;
  }

  @override
  Future<Either<ApiError, List<String>>> getCategories() {
    final response = get(ApiUrlBase.getCategories, _client, (json) => categoriesModelFromMap(json));
    return response;
  }
}