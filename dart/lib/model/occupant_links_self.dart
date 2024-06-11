//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksSelf {
  /// Returns a new [OccupantLinksSelf] instance.
  OccupantLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantLinksSelf(
      href: json[r'href'],
      iriTemplate: OccupantLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given occupant.
  String? href;

  OccupantLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantLinksSelf>[];
    }

    return json.fold(<OccupantLinksSelf>[],
        (List<OccupantLinksSelf> previousValue, element) {
      final OccupantLinksSelf? object = OccupantLinksSelf.fromJson(element);
      if (object is OccupantLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksSelf>{};
    }

    return json.entries.fold(<String, OccupantLinksSelf>{},
        (Map<String, OccupantLinksSelf> previousValue, element) {
      final OccupantLinksSelf? object =
          OccupantLinksSelf.fromJson(element.value);
      if (object is OccupantLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksSelf-objects as value to a dart map
  static Map<String, List<OccupantLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksSelf>>(
          key, OccupantLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
