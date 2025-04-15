//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PostRevoke200Response {
  /// Returns a new [PostRevoke200Response] instance.
  PostRevoke200Response({
    this.code,
    this.message,
  });

  /// Returns a new [PostRevoke200Response] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PostRevoke200Response? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PostRevoke200Response(
      code: json[r'code'],
      message: json[r'message'],
    );
  }

  int? code;

  String? message;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PostRevoke200Response &&
        other.code == code &&
        other.message == message;
  }

  @override
  int get hashCode =>
      (code == null ? 0 : code.hashCode) +
      (message == null ? 0 : message.hashCode);

  static List<PostRevoke200Response> listFromJson(Iterable? json) {
    if (json == null) {
      return <PostRevoke200Response>[];
    }

    return json.fold(<PostRevoke200Response>[],
        (List<PostRevoke200Response> previousValue, element) {
      final PostRevoke200Response? object =
          PostRevoke200Response.fromJson(element);
      if (object is PostRevoke200Response) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PostRevoke200Response> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PostRevoke200Response>{};
    }

    return json.entries.fold(<String, PostRevoke200Response>{},
        (Map<String, PostRevoke200Response> previousValue, element) {
      final PostRevoke200Response? object =
          PostRevoke200Response.fromJson(element.value);
      if (object is PostRevoke200Response) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PostRevoke200Response-objects as value to a dart map
  static Map<String, List<PostRevoke200Response>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PostRevoke200Response>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PostRevoke200Response>>(
          key, PostRevoke200Response.listFromJson(value));
    });
  }

  @override
  String toString() => 'PostRevoke200Response[code=$code, message=$message]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'code')) r'code': code,
      if (keys == null || keys.contains(r'message')) r'message': message,
    };
  }
}
