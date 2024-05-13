import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:phase_two/data/datasource/api_datasource_impl.dart';
import 'package:phase_two/data/datasource/api_datasource_interface.dart';
import 'package:phase_two/data/datasource/api_error.dart';
import 'package:phase_two/data/models/product_model.dart';
import 'package:phase_two/data/repositories/api_repository_interface.dart';

class ApiRepositoryImplements extends ApiRepositoryInterface {

  late ApiDatasourceInterface _dataSourceInterface;

  ApiRepositoryImplements({ApiDatasourceInterface? dataSourceInterface}) {
    _dataSourceInterface = dataSourceInterface ?? ApiDatasourceImplements(client: http.Client());
  }

  @override
  Future<Either<ApiError, List<ProductModel>>> getAllProducts() async {
    return _dataSourceInterface.getAllProducts();
  }

  @override
  Future<Either<ApiError, ProductModel>> getProductById(int id) async {
    return _dataSourceInterface.getProductById(id);
  }

  @override
  Future<Either<ApiError, List<String>>> getCategories() {
    return _dataSourceInterface.getCategories();
  }
}
