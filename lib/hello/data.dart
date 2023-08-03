import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class Products{
  late  int id;
  late String title;
  late  int price;
  late String thumbnail;

  Products({required this.id, required this.title, required this.price,required this.thumbnail});

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class ResponseData{
  late  List<dynamic>products;
  ResponseData({required this.products});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}


// @JsonSerializable()
// class User{
//   late  int id;
//   late String name;
//   late  String email;
//   late String gender;
//   late String status;
//   late String created_at;
//   late String updated_at;
//
//   User({required this.id, required this.name, required this.email,required this.gender, required this.status, required this.created_at, required this.updated_at});
//
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
//   Map<String, dynamic> toJson() => _$UserToJson(this);
// }
//
// @JsonSerializable()
// class ResponseData{
//   late int code;
//   late  dynamic meta;
//   late  List<dynamic>data;
//   ResponseData({required this.code, this.meta, required this.data});
//   factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
//   Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
//
// }

