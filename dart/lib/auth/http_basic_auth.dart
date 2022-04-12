//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class HttpBasicAuth implements Authentication {
  String username;
  String password;

  @override
  void applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    final String credentials = '${username ?? ''}:${password ?? ''}';
    headerParams['Authorization'] =
        'Basic ${base64.encode(utf8.encode(credentials))}';
  }
}
