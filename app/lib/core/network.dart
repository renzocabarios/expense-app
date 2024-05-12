import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/index.dart';

class Network {
  static const url = "${Constants.apiUrl}api/v1/";

  final Dio dio;
  Network({required this.dio});

  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  Future<HttpResponse> get(String route) async {
    final response = await dio.get(
      url + route,
    );

    final meta = HttpResponseMeta(
      access: response.data["meta"]["access"] ?? "",
      refresh: response.data["meta"]["refresh"] ?? "",
    );

    return HttpResponse(
      data: response.data["data"] ?? [],
      message: response.data["message"] ?? "",
      status: response.data["status"] ?? "",
      meta: meta,
    );
  }

  Future<HttpResponse> postForm(String route, FormData body) async {
    final response = await dio.post(
      url + route,
      data: body,
    );

    final meta = HttpResponseMeta(
      access: response.data["meta"]["access"] ?? "",
      refresh: response.data["meta"]["refresh"] ?? "",
    );

    return HttpResponse(
      data: response.data["data"] ?? [],
      message: response.data["message"] ?? "",
      status: response.data["status"] ?? "",
      meta: meta,
    );
  }

  Future<HttpResponse> post(String route, Map<String, dynamic> body) async {
    final response = await dio.post(
      url + route,
      data: body,
    );

    final meta = HttpResponseMeta(
      access: response.data["meta"]["access"] ?? "",
      refresh: response.data["meta"]["refresh"] ?? "",
    );

    return HttpResponse(
      data: response.data["data"] ?? [],
      message: response.data["message"] ?? "",
      status: response.data["status"] ?? "",
      meta: meta,
    );
  }

  Future<HttpResponse> patch(String route, Map<String, dynamic> body) async {
    final response = await dio.patch(
      url + route,
      data: body,
    );

    final meta = HttpResponseMeta(
      access: response.data["meta"]["access"] ?? "",
      refresh: response.data["meta"]["refresh"] ?? "",
    );

    return HttpResponse(
      data: response.data["data"] ?? [],
      message: response.data["message"] ?? "",
      status: response.data["status"] ?? "",
      meta: meta,
    );
  }

  Future<HttpResponse> delete(String route) async {
    final response = await dio.delete(
      url + route,
    );

    final meta = HttpResponseMeta(
      access: response.data["meta"]["access"] ?? "",
      refresh: response.data["meta"]["refresh"] ?? "",
    );
    return HttpResponse(
      data: response.data["data"] ?? [],
      message: response.data["message"] ?? "",
      status: response.data["status"] ?? "",
      meta: meta,
    );
  }
}

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({
      "Content-Type": "application/json",
    });
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('user');

    if (token?.isNotEmpty ?? false) {
      options.headers.addAll({
        "Authorization": "Bearer $token",
      });
    }
    return super.onRequest(options, handler);
  }
}

class HttpResponseMeta extends Equatable {
  final String? access;
  final String? refresh;

  const HttpResponseMeta({
    this.access = "",
    this.refresh = "",
  });

  @override
  List<Object?> get props => [access, refresh];

  HttpResponseMeta copyWith<K extends dynamic>({
    String? access,
    String? refresh,
    List<K>? data,
  }) {
    return HttpResponseMeta(
      access: access ?? this.access,
      refresh: refresh ?? this.refresh,
    );
  }
}

class HttpResponse<T extends dynamic> extends Equatable {
  final String status;
  final String message;
  final HttpResponseMeta? meta;
  final List<T> data;

  const HttpResponse({
    required this.status,
    required this.message,
    required this.data,
    this.meta,
  });

  @override
  List<Object?> get props => [status, message, data, meta];

  HttpResponse copyWith<K extends dynamic>({
    String? status,
    String? message,
    List<K>? data,
    HttpResponseMeta? meta,
  }) {
    return HttpResponse(
      data: data ?? this.data,
      status: status ?? this.status,
      message: message ?? this.message,
      meta: meta ?? this.meta,
    );
  }
}
