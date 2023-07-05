import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../error/error_model.dart';
import '../../error/exceptions.dart';
import '../../services/service_locator.dart';
import '../../utils/commons.dart';
import 'api_consumer.dart';
import 'app_interceptors.dart';
import 'end_points.dart';
import 'status_code.dart';

class DioConsumer extends ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false;
    client.interceptors.add(sl<AppIntercepters>());
    if (kDebugMode) {
      client.interceptors.add(sl<LogInterceptor>());
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      return decodeResponse(response);
    } on DioException catch (error) {
      printError('getError$error');
      _handleDioError(error);
    }
  }

  @override
  Future<dynamic> post(
    String path, { //path == endpoint
    Map<String, dynamic>? body,
    bool formDataIsEnabled = false,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.post(
        path,
        data: formDataIsEnabled ? FormData.fromMap(body!) : body,
        options: Options(
          headers: headers,
        ),
        queryParameters: queryParameters,
      );

      return decodeResponse(response);
    } on DioException catch (error) {
      _handleDioError(error);
    }
  }

  dynamic decodeResponse(Response response) {
    return jsonDecode(response.data.toString());
  }

  @override
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.delete(path,
          data: body,
          options: Options(
            headers: headers,
          ),
          queryParameters: queryParameters);
      return decodeResponse(response);
    } on DioException catch (error) {
      _handleDioError(error);
    }
  }

  @override
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    bool responseIsParsing = true,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.patch(
        path,
        data: body,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );

      return decodeResponse(response);
    } on DioException catch (error) {
      _handleDioError(error);
    } on SocketException {
      throw const NoInternetConnectionException(
          ErrorMessageModel(statusMessage: 'No'));
    }
  }

  dynamic _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
        throw FetchDataException(
            ErrorMessageModel.fromJson(jsonDecode(error.response!.data)));
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.notFound:
            throw NotFoundException(
                ErrorMessageModel.fromJson(jsonDecode(error.response!.data)));
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw UnauthorizedException(
                ErrorMessageModel.fromJson(jsonDecode(error.response!.data)));
          case StatusCode.badRequest:
            printTest((error.response!.data.toString()));
            throw BadRequestException(
                ErrorMessageModel.fromJson(jsonDecode(error.response!.data)));
          case StatusCode.conflict:
            throw ConflictException(
                ErrorMessageModel.fromJson(jsonDecode(error.response!.data)));
          case StatusCode.internalServerError:
            throw InternalServerErrorException(
                ErrorMessageModel.fromJson(decodeResponse(error.response!)));
        }
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        printError('Nooooooooooooooooooooooooooooooooooooo');
        throw const NoInternetConnectionException(
            ErrorMessageModel(statusMessage: 'No'));
    }
  }
}
