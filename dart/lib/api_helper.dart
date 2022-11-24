//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() =>
      '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// extracted from dart:io package which cannot be used for web clients
class HttpStatus {
  static const int noContent = 204;
  static const int badRequest = 400;
  static const int internalServerError = 500;
}

// Ported from the Java version.
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat,
  String name,
  dynamic value,
) {
  // preconditions
  if (name == null || name.isEmpty || value == null) {
    return <QueryParam>[];
  }

  if (value is! List) {
    return <QueryParam>[
      QueryParam(name, parameterToString(value)),
    ];
  }

  // get the collection format, default: csv
  collectionFormat =
      (collectionFormat?.isEmpty ?? true) ? 'csv' : collectionFormat;

  if (collectionFormat == 'multi') {
    return <QueryParam>[
      for (final v in value) QueryParam(name, parameterToString(v)),
    ];
  }

  final delimiter = _delimiters[collectionFormat] ?? ',';

  return <QueryParam>[
    QueryParam(name, value.map((v) => parameterToString(v)).join(delimiter)),
  ];
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is Permission) {
    return PermissionTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null &&
          contentType.toLowerCase().startsWith('application/json')
      ? response.bodyBytes == null
          ? null
          : utf8.decode(response.bodyBytes)
      : response.body;
}
