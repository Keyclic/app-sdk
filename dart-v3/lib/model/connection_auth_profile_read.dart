//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectionAuthProfileRead {
  /// Returns a new [ConnectionAuthProfileRead] instance.
  ConnectionAuthProfileRead({
    this.image,
    this.text,
    this.authorizationUrl,
    this.type,
  });

  /// Returns a new [ConnectionAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectionAuthProfileRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectionAuthProfileRead(
      image: json[r'image'],
      text: json[r'text'],
      authorizationUrl: json[r'authorizationUrl'],
      type: json[r'type'],
    );
  }

  String? image;

  String? text;

  final String? authorizationUrl;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConnectionAuthProfileRead &&
        other.image == image &&
        other.text == text &&
        other.authorizationUrl == authorizationUrl &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (authorizationUrl == null ? 0 : authorizationUrl.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ConnectionAuthProfileRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ConnectionAuthProfileRead>[];
    }

    return json.fold(<ConnectionAuthProfileRead>[],
        (List<ConnectionAuthProfileRead> previousValue, element) {
      final ConnectionAuthProfileRead? object =
          ConnectionAuthProfileRead.fromJson(element);
      if (object is ConnectionAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectionAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectionAuthProfileRead>{};
    }

    return json.entries.fold(<String, ConnectionAuthProfileRead>{},
        (Map<String, ConnectionAuthProfileRead> previousValue, element) {
      final ConnectionAuthProfileRead? object =
          ConnectionAuthProfileRead.fromJson(element.value);
      if (object is ConnectionAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectionAuthProfileRead-objects as value to a dart map
  static Map<String, List<ConnectionAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectionAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectionAuthProfileRead>>(
          key, ConnectionAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectionAuthProfileRead[image=$image, text=$text, authorizationUrl=$authorizationUrl, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image,
      if ((keys == null && text != null) || (keys?.contains(r'text') ?? false))
        r'text': text,
      if ((keys == null && authorizationUrl != null) ||
          (keys?.contains(r'authorizationUrl') ?? false))
        r'authorizationUrl': authorizationUrl,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
