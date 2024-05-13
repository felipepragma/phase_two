
class ApiUrlBase {
  static const _baseUrl = 'https://fakestoreapi.com/';

  static String getAllProducts = '${_baseUrl}products';
  static String getProductById(int id) => '${_baseUrl}products/$id';
  static String getCategories = '${_baseUrl}products/categories';
}