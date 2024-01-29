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

    return json.fold(<OccupantLinks>[],
        (List<OccupantLinks> previousValue, element) {
      final OccupantLinks? object = OccupantLinks.fromJson(element);
      if (object is OccupantLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinks>{};
    }

    return json.entries.fold(<String, OccupantLinks>{},
        (Map<String, OccupantLinks> previousValue, element) {
      final OccupantLinks? object = OccupantLinks.fromJson(element.value);
      if (object is OccupantLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinks-objects as value to a dart map
  static Map<String, List<OccupantLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinks>>(
          key, OccupantLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantLinks[member=$member, place=$place, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
