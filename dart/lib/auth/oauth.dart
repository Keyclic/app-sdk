//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OAuth implements Authentication {
  OAuth({this.accessToken});

  String accessToken;

  @override
  void applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    if (accessToken != null) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }
}
