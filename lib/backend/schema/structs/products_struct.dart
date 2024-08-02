// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends BaseStruct {
  ProductsStruct({
    String? name,
    String? image,
    double? price,
  })  : _name = name,
        _image = image,
        _price = price;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
        price: castToType<double>(data['price']),
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        name == other.name &&
        image == other.image &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([name, image, price]);
}

ProductsStruct createProductsStruct({
  String? name,
  String? image,
  double? price,
}) =>
    ProductsStruct(
      name: name,
      image: image,
      price: price,
    );
