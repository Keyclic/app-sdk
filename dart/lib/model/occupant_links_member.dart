//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksMember {
  /// Returns a new [OccupantLinksMember] instance.
  OccupantLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantLinksMember(
      href: json[r'href'],
      iriTemplate:
          OccupantLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given occupant.
  String? href;

  OccupantLinksMemberIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksMember> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksMember>[];
    }

    return json.fold(<OccupantLinksMember>[],
        (List<OccupantLinksMember> previousValue, element) {
      final OccupantLinksMember? object = OccupantLinksMember.fromJson(element);
      if (object is OccupantLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksMember>{};
    }

    return json.entries.fold(<String, OccupantLinksMember>{},
        (Map<String, OccupantLinksMember> previousValue, element) {
      final OccupantLinksMember? object =
          OccupantLinksMember.fromJson(element.value);
      if (object is OccupantLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksMember-objects as value to a dart map
  static Map<String, List<OccupantLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksMember>>(
          key, OccupantLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
