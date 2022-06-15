//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinks {
  /// Returns a new [OccupantLinks] instance.
  OccupantLinks({
    this.member,
    this.place,
    this.self,
  });

  /// Returns a new [OccupantLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinks(
      member: OccupantLinksMember.fromJson(json[r'member']),
      place: OccupantLinksPlace.fromJson(json[r'place']),
      self: OccupantLinksSelf.fromJson(json[r'self']),
    );
  }

  OccupantLinksMember? member;

  OccupantLinksPlace? place;

  OccupantLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinks &&
        other.member == member &&
        other.place == place &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<OccupantLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinks>[];
    }
    return json
        .map((value) {
          return OccupantLinks.fromJson(value);
        })
        .whereType<OccupantLinks>()
        .toList();
  }

  static Map<String, OccupantLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OccupantLinks?>(key, OccupantLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OccupantLinks>;
  }

  // maps a json object with a list of OccupantLinks-objects as value to a dart map
  static Map<String, List<OccupantLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OccupantLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OccupantLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OccupantLinks[member=$member, place=$place, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
      if (place != null) r'place': place,
      if (self != null) r'self': self,
    };
  }
}
