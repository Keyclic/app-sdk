//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OccupantJsonhalRead {
  /// Returns a new [OccupantJsonhalRead] instance.
  OccupantJsonhalRead({
    this.links,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.embedded,
  });

  /// Returns a new [OccupantJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
      embedded: OccupantJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  OccupantJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantJsonhalRead &&
        other.links == links &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<OccupantJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantJsonhalRead>[];
    }

    return json.fold(<OccupantJsonhalRead>[],
        (List<OccupantJsonhalRead> previousValue, element) {
      final OccupantJsonhalRead? object = OccupantJsonhalRead.fromJson(element);
      if (object is OccupantJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantJsonhalRead>{};
    }

    return json.entries.fold(<String, OccupantJsonhalRead>{},
        (Map<String, OccupantJsonhalRead> previousValue, element) {
      final OccupantJsonhalRead? object =
          OccupantJsonhalRead.fromJson(element.value);
      if (object is OccupantJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantJsonhalRead-objects as value to a dart map
  static Map<String, List<OccupantJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantJsonhalRead>>(
          key, OccupantJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantJsonhalRead[links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, embedded=$embedded]';

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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
