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
        "per_page": perPage,
        "view_mode": "full",
      },
    );

    if (res == null && res?.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    } else {
      return PropertyResponseDto.fromJson(res?.data["data"]);
    }
  }

  @override
  Future<PropertyResponseDto?> getNextProperty({required String url}) async {
    final uri = Uri.parse(url);
    
    final Map<String, dynamic> params = Map<String, dynamic>.from(uri.queryParameters);
    
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
}
