import 'dart:convert';
import 'dart:io';

import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart';
import 'package:rentara_property_clone/src/features/post_property/data/dto/post_property_dto.dart';

abstract class PostPropertyRemoteDatasource {
  Future<String> postProperty(PostPropertyDto data);
}

class PostPropertyRemoteDatasourceImpl extends PostPropertyRemoteDatasource {
  final DioServices _dioServices;
  final ApiUrlConfig _apiUrlConfig;

  PostPropertyRemoteDatasourceImpl(this._dioServices, this._apiUrlConfig);

  @override
  Future<String> postProperty(PostPropertyDto data) async {
    final File imageFile = File(data.image);
    final List<int> imageBytes = await imageFile.readAsBytes();
    final String base64Image = base64Encode(imageBytes);

    final response = await _dioServices.post(
      path: _apiUrlConfig.properties,
      body: data.copyWith(image: 'data:image/jpeg;base64,$base64Image').toJson(),
    );

    return response?.data['message'] ?? 'Successfully posted property';
  }
}
