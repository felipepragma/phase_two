import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:phase_two/data/datasource/api_datasource_interface.dart';
import 'package:phase_two/data/datasource/api_error.dart';
import 'package:phase_two/data/datasource/api_url_base.dart';
import 'package:phase_two/data/datasource/either_api.dart';
import 'package:phase_two/data/models/list_categories_model.dart';
import 'package:phase_two/data/models/list_products_model.dart';
import 'package:phase_two/data/models/product_model.dart';

///
/// [ApiDatasourceImplements] Implemnetation to DataSource
/// 
/// [_client] : Inject http client [http.Client] to api call
///
/// [getAllProducts] : method for api call get all products
/// [getProductById] : method for api call get product by id
/// [getCategories] : method for api call get all categories
/// 
class ApiDatasourceImplements extends ApiDatasourceInterface {

  final http.Client _client;

  ApiDatasourceImplements({required http.Client client}) : _client = client;
  
  @override
  Future<Either<ApiError, List<ProductModel>>> getAllProducts() async {
    final response = get(ApiUrlBase.getAllProducts, _client, (json) => LisProductsModel().productsModelFromMap(json));
    return response;
  }

  @override
  Future<Either<ApiError, ProductModel>> getProductById(int id) async {
    final response = get(ApiUrlBase.getProductById(id), _client, (json) => ProductModel().fromJson(json));
    return response;
  }

  @override
  Future<Either<ApiError, List<String>>> getCategories() {
    final response = get(ApiUrlBase.getCategories, _client, (json) => ListCategoriesModel().categoriesModelFromMap(json));
    return response;
  }
}