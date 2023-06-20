//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

// extracted from dart:io package which cannot be used for web clients
class HttpStatus {
  static const int internalServerError = 500;
}

/// Format the given form parameter object into something that Dio can handle.
String encodeFormParameter(dynamic parameter) {
  return parameterToString(parameter);
}

ListParam<String> encodeCollectionQueryParameter(Iterable parameters,
    {ListFormat format = ListFormat.multi}) {
  return ListParam<String>([
    for (final parameter in parameters) parameterToString(parameter),
  ], format);
}

// ListParam<T> encodeCollectionQueryParameter<T>(Iterable<T> parameters, {ListFormat format = ListFormat.multi}) {
//   return ListParam<T>([for (final parameter in parameters) parameter,], format);
// }

String encodeQueryParameter(dynamic parameter) {
  return parameterToString(parameter);
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  return value.toString();
  // return jsonEncode(value);
}
