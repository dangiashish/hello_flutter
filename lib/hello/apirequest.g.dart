// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apirequest.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************


class _ApiRequest implements ApiRequest {
  _ApiRequest(this._dio, {required this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl = 'https://dummyjson.com';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getProducts() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};

     var options=Options(
        receiveTimeout: const Duration(seconds: 2000),sendTimeout: const Duration(seconds: 2000),
        method: 'GET',
        headers: <String, dynamic>{},
        extra: extra,

      );
    final result = await _dio.request('$baseUrl/products',
        queryParameters: queryParameters,
        options: options,

        data: data);
    final value = ResponseData.fromJson(result.data);
    return value;
  }
}


// class _ApiRequest implements ApiRequest {
//   _ApiRequest(this._dio, {required this.baseUrl}) {
//     ArgumentError.checkNotNull(_dio, '_dio');
//     this.baseUrl = 'https://gorest.co.in/public-api/';
//   }
//
//   final Dio _dio;
//
//   String baseUrl;
//
//   @override
//   getUsers() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//
//      var options=Options(
//         receiveTimeout: Duration(seconds: 1000),sendTimeout: Duration(seconds: 1000),
//         method: 'GET',
//         headers: <String, dynamic>{},
//         extra: _extra,
//
//       );
//     final _result = await _dio.request('$baseUrl/users',
//         queryParameters: queryParameters,
//         options: options,
//
//         data: _data);
//     final value = ResponseData.fromJson(_result.data);
//     return value;
//   }
// }
