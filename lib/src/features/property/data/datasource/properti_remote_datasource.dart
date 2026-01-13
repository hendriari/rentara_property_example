import 'package:flutter/foundation.dart';
import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/error/exceptions.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart';
import 'package:rentara_property_clone/src/features/property/data/dto/property_response/property_response_dto.dart';

abstract class PropertyRemoteDatasource {
  Future<PropertyResponseDto?> getListProperty({
    required String query,
    int? perPage,
    int? maxPrice,
    int? minPrice,
    String? status,
    String? type,
  });

  Future<PropertyResponseDto?> getNextProperty({required String url});

  Future<List<int>> getIdPropertyClustering({
    required double swLat,
    required double swLng,
    required double neLat,
    required double neLng,
    int? limit,
  });

  Future<PropertyResponseDto?> getBulkProperty({
    required List<int>? ids,
    String? viewMode,
    String? type,
    String? status,
    int? perPage,
    double? maxPrice,
    double? minPrice,
  });

  Future<PropertyResponseDto?> getNextBulkProperty({required String url});
}

class PropertyRemoteDatasourceImpl extends PropertyRemoteDatasource {
  final DioServices _dioServices;
  final ApiUrlConfig _apiUrlConfig;

  PropertyRemoteDatasourceImpl(this._dioServices, this._apiUrlConfig);

  @override
  Future<PropertyResponseDto?> getListProperty({
    required String query,
    int? perPage,
    int? maxPrice,
    int? minPrice,
    String? status,
    String? type,
  }) async {
    final res = await _dioServices.get(
      path: _apiUrlConfig.properties,
      params: {
        "search": query,
        "max_price": maxPrice,
        "min_price": minPrice,
        "status": status,
        "type": type,
        "per_page": perPage ?? 15,
        "view_mode": "full",
      },
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      return PropertyResponseDto.fromJson(res.data["data"]);
    }
  }

  @override
  Future<PropertyResponseDto?> getNextProperty({required String url}) async {
    final uri = Uri.parse(url);

    final Map<String, dynamic> params = Map<String, dynamic>.from(
      uri.queryParameters,
    );

    params.putIfAbsent("view_mode", () => "full");

    final res = await _dioServices.get(
      path: _apiUrlConfig.properties,
      params: params,
    );

    if (res == null && res?.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      return PropertyResponseDto.fromJson(res?.data["data"]);
    }
  }

  @override
  Future<List<int>> getIdPropertyClustering({
    required double swLat,
    required double swLng,
    required double neLat,
    required double neLng,
    int? limit,
  }) async {
    final res = await _dioServices.post(
      path: _apiUrlConfig.locationClustering,
      body: {
        "bounds": [
          {
            "sw_latitude": swLat,
            "sw_longitude": swLng,
            "ne_latitude": neLat,
            "ne_longitude": neLng,
          },
        ],
        "limit": limit ?? 500,
      },
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      return List<int>.from(res.data["data"]);
    }
  }

  @override
  Future<PropertyResponseDto?> getBulkProperty({
    required List<int>? ids,
    String? viewMode,
    String? type,
    String? status,
    int? perPage,
    double? maxPrice,
    double? minPrice,
  }) async {
    final res = await _dioServices.post(
      path: _apiUrlConfig.searchProperties,
      params: {
        "ids": ids,
        "max_price": maxPrice,
        "min_price": minPrice,
        "status": status,
        "type": type,
        "per_page": perPage ?? 12,
        "view_mode": viewMode ?? "simple",
      },
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      final data = res.data;
      final list = data?["data"]?["data"] as List?;
      final totalData = list?.length ?? 0;

      if (totalData >= 200) {
        return compute(_parsePropertyCompute, data);
      } else {
        return PropertyResponseDto.fromJson(data["data"]);
      }
    }
  }

  @override
  Future<PropertyResponseDto?> getNextBulkProperty({
    required String url,
  }) async {
    final uri = Uri.parse(url);

    final Map<String, dynamic> params = Map<String, dynamic>.from(
      uri.queryParameters,
    );

    params.putIfAbsent("view_mode", () => "simple");
    params.putIfAbsent("per_page", () => 15);

    final res = await _dioServices.post(
      path: _apiUrlConfig.searchProperties,
      params: params,
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      final data = res.data;
      final list = data?["data"]?["data"] as List?;
      final totalData = list?.length ?? 0;

      if (totalData >= 200) {
        return compute(_parsePropertyCompute, data);
      } else {
        return PropertyResponseDto.fromJson(data["data"]);
      }
    }
  }
}

PropertyResponseDto _parsePropertyCompute(dynamic json) {
  return PropertyResponseDto.fromJson(json["data"]);
}
