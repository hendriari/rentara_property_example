import 'package:rentara_property_clone/src/core/api_config/api_env_config.dart';

sealed class ApiUrlConfig {
  String get baseUrl;

  String get login;

  String get register;

  String get properties;

  String get searchProperties;

  String get locationClustering;
}

class ApiUrlConfigImpl extends ApiUrlConfig {
  final ApiEnvConfig _env;

  ApiUrlConfigImpl(this._env);

  @override
  String get baseUrl => _env.baseUrl;

  @override
  String get locationClustering => _env.locationClustering;

  @override
  String get login => _env.login;

  @override
  String get properties => _env.properties;

  @override
  String get register => _env.register;

  @override
  String get searchProperties => _env.searchProperties;
}
