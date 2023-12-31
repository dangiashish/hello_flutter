
part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductFromJson(Map<String, dynamic> json) {
  return Products(
    id: json['id'] as int,
    title: json['title'] as String,
    price: json['price'] as int,
    thumbnail: json['thumbnail'] as String,

  );
}

Map<String, dynamic> _$ProductToJson(Products instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'price': instance.price,
  'thumbnail': instance.thumbnail,

};

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return ResponseData(
    products: json['products'] as List,
  );
}

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };





// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// User _$UserFromJson(Map<String, dynamic> json) {
//   return User(
//     id: json['id'] as int,
//     name: json['name'] as String,
//     email: json['email'] as String,
//     gender: json['gender'] as String,
//     status: json['status'] as String,
//     created_at: json['created_at'] as String,
//     updated_at: json['updated_at'] as String,
//   );
// }
//
// Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
//       'id': instance.id,
//       'name': instance.name,
//       'email': instance.email,
//       'gender': instance.gender,
//       'status': instance.status,
//       'created_at': instance.created_at,
//       'updated_at': instance.updated_at,
//     };
//
// ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
//   return ResponseData(
//     code: json['code'] as int,
//     meta: json['meta'],
//     data: json['data'] as List,
//   );
// }
//
// Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
//     <String, dynamic>{
//       'code': instance.code,
//       'meta': instance.meta,
//       'data': instance.data,
//     };
