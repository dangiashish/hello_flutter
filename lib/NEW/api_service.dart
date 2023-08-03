import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://nodedev.safaimitra.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/auth/login")
  @FormUrlEncoded()
  Future<LoginResponse> login(@Field("UserId") String userId, @Field("Password") String password);
}

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'token')
  String token;
  @JsonKey(name: 'user_id')
  String userId;

  LoginResponse({required this.token, required this.userId});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
