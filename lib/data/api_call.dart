
import 'package:dartz/dartz.dart';
import 'package:phase_two/data/datasource/api_error.dart';
import 'package:phase_two/data/models/product_model.dart';
import 'package:phase_two/data/repositories/api_repository_impl.dart';
import 'package:phase_two/data/repositories/api_repository_interface.dart';

class ApiCall {

  late ApiRepositoryInterface _apiRepository;

  ApiCall({ApiRepositoryInterface? apiRepository}) {
    _apiRepository = apiRepository ?? ApiRepositoryImplements();
  }

  Future<Either<ApiError, List<ProductModel>>> getAllProducts() async {
    return _apiRepository.getAllProducts();
  }

  Future<Either<ApiError, ProductModel>> getProductById(int id) async {
    return _apiRepository.getProductById(id);
  }

  Future<Either<ApiError, List<String>>> getCategories() async {
    return _apiRepository.getCategories();
  }
}