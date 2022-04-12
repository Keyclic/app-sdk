//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApiKeyAuth implements Authentication {
  ApiKeyAuth(this.location, this.paramName);

  final String location;
  final String paramName;

  String apiKeyPrefix;
  String apiKey;

  @override
  void applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    final String value =
        apiKeyPrefix == null ? apiKey : '$apiKeyPrefix $apiKey';

    if (value == null) {
      return;
    }

    if (location == 'query') {
      queryParams.add(QueryParam(paramName, value));
    } else if (location == 'header') {
      headerParams[paramName] = value;
    } else if (location == 'cookie') {
      headerParams.update('Cookie', (String existingCookie) {
        return '$existingCookie; $paramName=$value';
      }, ifAbsent: () => '$paramName=$value');
    }
  }
}
