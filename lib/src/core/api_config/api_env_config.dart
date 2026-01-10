import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rentara_property_clone/src/core/error/exceptions.dart';

class ApiEnvConfig {
  final String baseUrl;
  final String login;
  final String register;
  final String properties;
  final String searchProperties;
  final String locationClustering;

  ApiEnvConfig({
    required this.baseUrl,
    required this.login,
    required this.register,
    required this.properties,
    required this.searchProperties,
    required this.locationClustering,
  });

  factory ApiEnvConfig.fromEnv() {
    final baseUrlPath = dotenv.env["BASE_URL"] ?? '';
    final loginPath = dotenv.env["LOGIN"] ?? '';
    final registerPath = dotenv.env["REGISTER"] ?? '';
    final propertiesPath = dotenv.env["PROPERTIES"] ?? '';
    final searchPropertiesPath = dotenv.env["SEARCH_PROPERTIES"] ?? '';
    final locationClusteringPath = dotenv.env["LOCATION_CLUSTER"] ?? '';

    final paths = [
      baseUrlPath,
      loginPath,
      registerPath,
      propertiesPath,
      searchPropertiesPath,
      locationClusteringPath,
    ];

    if (paths.any((e) => e.isEmpty)) {
      throw GeneralException(
        message: "One or more environment variables are missing",
      );
    }

    return ApiEnvConfig(
      baseUrl: baseUrlPath,
      login: loginPath,
      register: registerPath,
      properties: propertiesPath,
      searchProperties: searchPropertiesPath,
      locationClustering: locationClusteringPath,
    );
  }
}
