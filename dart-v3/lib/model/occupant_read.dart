//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OccupantRead {
  /// Returns a new [OccupantRead] instance.
  OccupantRead({
    required this.place,
    required this.member,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
  });

  /// Returns a new [OccupantRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantRead(
      place: AssetRead.fromJson(json[r'place'])!,
      member: ContactRead.fromJson(json[r'member'])!,
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      type: json[r'type'],
    );
  }

  AssetRead place;

  ContactRead member;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantRead &&
        other.place == place &&
        other.member == member &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode =>
      place.hashCode +
      member.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<OccupantRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantRead>[];
    }

    return json.fold(<OccupantRead>[],
        (List<OccupantRead> previousValue, element) {
      final OccupantRead? object = OccupantRead.fromJson(element);
      if (object is OccupantRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantRead>{};
    }

    return json.entries.fold(<String, OccupantRead>{},
        (Map<String, OccupantRead> previousValue, element) {
      final OccupantRead? object = OccupantRead.fromJson(element.value);
      if (object is OccupantRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantRead-objects as value to a dart map
  static Map<String, List<OccupantRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantRead>>(
          key, OccupantRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantRead[place=$place, member=$member, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'place': place.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^place\.'))) {
          previousValue.add(element.split(RegExp(r'^place\.')).last);
        }

        return previousValue;
      })),
      r'member': member.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^member\.'))) {
          previousValue.add(element.split(RegExp(r'^member\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
