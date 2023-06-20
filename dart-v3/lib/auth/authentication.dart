//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

abstract class AuthInterceptor extends Interceptor {
  /// Get auth information on given route for the given type.
  /// Can return an empty list if type is not present on auth data or
  /// if route doesn't need authentication.
  List<Map<String, String>> getAuthInfo(
      RequestOptions route, bool Function(Map<String, String> secure) handles) {
    final List<Map<String, String>>? auth = route.extra['secure'];

    if (auth == null) {
      return <Map<String, String>>[];
    }

    return <Map<String, String>>[
      for (final Map<String, String> secure in auth)
        if (handles(secure)) secure,
    ];
  }
}
