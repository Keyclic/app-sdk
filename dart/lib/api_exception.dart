//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApiException implements Exception {
  ApiException(this.code, this.message);

  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);

  int code = 0;
  String message;
  Exception innerException;
  StackTrace stackTrace;

  @override
  String toString() {
    if (message == null) {
      return 'ApiException';
    }
    if (innerException == null) {
      return 'ApiException $code: $message';
    }
    return 'ApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace';
  }
}
