import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'data.dart';
part 'apirequest.g.dart';

// @RestApi(baseUrl: "https://gorest.co.in/public-api/")
// abstract class ApiRequest{
//   factory ApiRequest(Dio dio,{required String baseUrl}) =_ApiRequest;
//
//   @GET("/users")
//   Future<ResponseData> getUsers();
//
// }


@RestApi(baseUrl: "https://dummyjson.com/")
abstract class ApiRequest{
  factory ApiRequest(Dio dio,{required String baseUrl}) =_ApiRequest;

  @GET("/products")
  Future<ResponseData> getProducts();

}