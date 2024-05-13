///
/// [ModelBase] abstract model base
/// 
/// [fromJson] : method get instance fromJson
/// [toJson] : method get string instance
/// 
abstract class ModelBase<T> {
  T fromJson(String str);
  String toJson();
}