//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BasicAuthInfo {
  const BasicAuthInfo(this.username, this.password);

  final String username;
  final String password;
}

class BasicAuthInterceptor extends AuthInterceptor {
  final Map<String, BasicAuthInfo> authInfo = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final metadataAuthInfo = getAuthInfo(
        options,
        (secure) =>
            (secure['type'] == 'http' && secure['scheme'] == 'basic') ||
            secure['type'] == 'basic');

    for (final info in metadataAuthInfo) {
      final String authName = info['name']!;

      final basicAuthInfo = authInfo[authName];
      if (basicAuthInfo != null) {
        final basicAuth =
            'Basic ${base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'))}';
        options.headers['Authorization'] = basicAuth;
        break;
      }
    }

    super.onRequest(options, handler);
  }
}
