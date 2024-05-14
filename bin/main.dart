import 'package:phase_two/phase_two.dart' as phase_two;

void main(List<String> arguments) async {

  print("/***** Llamado de Api getAllProducts *****/ \n");
  final getAllProducts = await phase_two.ApiCall().getAllProducts();
  getAllProducts.fold(
    (error) => print('Error en la llamada a la API: $error'),
    (success) { for(var element in success) { print(element); } } ,
  );

  print("/***** Llamado de Api getProductsById by ID 10 *****/ \n");
  final getProductById = await phase_two.ApiCall().getProductById(10);
  getProductById.fold(
    (error) => print('Error en la llamada a la API: $error'),
    (success) => print(success),
  );

  print("/***** Llamado de Api getCategories *****/ \n");
  final getCategories = await phase_two.ApiCall().getCategories();
  getCategories.fold(
    (error) => print('Error en la llamada a la API: $error'),
    (success) => print(success),
  );
}
