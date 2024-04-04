//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ConnectionJsonhalAuthProfileRead {
  /// Returns a new [ConnectionJsonhalAuthProfileRead] instance.
  ConnectionJsonhalAuthProfileRead({
    this.links,
    this.image,
    this.text,
    this.authorizationUrl,
    this.type,
  });

  /// Returns a new [ConnectionJsonhalAuthProfileRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectionJsonhalAuthProfileRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ConnectionJsonhalAuthProfileRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      image: json[r'image'],
      text: json[r'text'],
      authorizationUrl: json[r'authorizationUrl'],
      type: json[r'type'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

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

    return other is ConnectionJsonhalAuthProfileRead &&
        other.links == links &&
        other.image == image &&
        other.text == text &&
        other.authorizationUrl == authorizationUrl &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (text == null ? 0 : text.hashCode) +
      (authorizationUrl == null ? 0 : authorizationUrl.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ConnectionJsonhalAuthProfileRead> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ConnectionJsonhalAuthProfileRead>[];
    }

    return json.fold(<ConnectionJsonhalAuthProfileRead>[],
        (List<ConnectionJsonhalAuthProfileRead> previousValue, element) {
      final ConnectionJsonhalAuthProfileRead? object =
          ConnectionJsonhalAuthProfileRead.fromJson(element);
      if (object is ConnectionJsonhalAuthProfileRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ConnectionJsonhalAuthProfileRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ConnectionJsonhalAuthProfileRead>{};
    }

    return json.entries.fold(<String, ConnectionJsonhalAuthProfileRead>{},
        (Map<String, ConnectionJsonhalAuthProfileRead> previousValue, element) {
      final ConnectionJsonhalAuthProfileRead? object =
          ConnectionJsonhalAuthProfileRead.fromJson(element.value);
      if (object is ConnectionJsonhalAuthProfileRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ConnectionJsonhalAuthProfileRead-objects as value to a dart map
  static Map<String, List<ConnectionJsonhalAuthProfileRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ConnectionJsonhalAuthProfileRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ConnectionJsonhalAuthProfileRead>>(
          key, ConnectionJsonhalAuthProfileRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ConnectionJsonhalAuthProfileRead[links=$links, image=$image, text=$text, authorizationUrl=$authorizationUrl, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'image')) r'image': image,
      if (keys == null || keys.contains(r'text')) r'text': text,
      if (keys == null || keys.contains(r'authorizationUrl'))
        r'authorizationUrl': authorizationUrl,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
