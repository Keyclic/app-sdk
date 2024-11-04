//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MemberJsonhalRead {
  /// Returns a new [MemberJsonhalRead] instance.
  MemberJsonhalRead({
    this.links,
    this.contactPoint,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.embedded,
  });

  /// Returns a new [MemberJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberJsonhalRead(
      links: MemberJsonhalReadLinks.fromJson(json[r'_links']),
      contactPoint: ContactPointJsonhalRead.fromJson(json[r'contactPoint']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
      embedded: MemberJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  MemberJsonhalReadLinks? links;

  ContactPointJsonhalRead? contactPoint;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  MemberJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberJsonhalRead &&
        other.links == links &&
        other.contactPoint == contactPoint &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<MemberJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberJsonhalRead>[];
    }

    return json.fold(<MemberJsonhalRead>[],
        (List<MemberJsonhalRead> previousValue, element) {
      final MemberJsonhalRead? object = MemberJsonhalRead.fromJson(element);
      if (object is MemberJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberJsonhalRead>{};
    }

    return json.entries.fold(<String, MemberJsonhalRead>{},
        (Map<String, MemberJsonhalRead> previousValue, element) {
      final MemberJsonhalRead? object =
          MemberJsonhalRead.fromJson(element.value);
      if (object is MemberJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberJsonhalRead-objects as value to a dart map
  static Map<String, List<MemberJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberJsonhalRead>>(
          key, MemberJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'MemberJsonhalRead[links=$links, contactPoint=$contactPoint, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, embedded=$embedded]';

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
      if (keys == null ||
          keys.any((key) => RegExp(r'^contactPoint\.').hasMatch(key)))
        r'contactPoint': contactPoint?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contactPoint\.'))) {
            previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
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
