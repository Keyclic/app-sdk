//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksPlace {
  /// Returns a new [OccupantLinksPlace] instance.
  OccupantLinksPlace({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OccupantLinksPlace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksPlace? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OccupantLinksPlace(
      href: json[r'href'],
      iriTemplate: OccupantLinksPlaceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the place associated to the given occupant.
  String? href;

  OccupantLinksPlaceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPlace &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OccupantLinksPlace> listFromJson(Iterable? json) {
    if (json == null) {
      return <OccupantLinksPlace>[];
    }

    return json.fold(<OccupantLinksPlace>[],
        (List<OccupantLinksPlace> previousValue, element) {
      final OccupantLinksPlace? object = OccupantLinksPlace.fromJson(element);
      if (object is OccupantLinksPlace) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksPlace> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksPlace>{};
    }

    return json.entries.fold(<String, OccupantLinksPlace>{},
        (Map<String, OccupantLinksPlace> previousValue, element) {
      final OccupantLinksPlace? object =
          OccupantLinksPlace.fromJson(element.value);
      if (object is OccupantLinksPlace) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksPlace-objects as value to a dart map
  static Map<String, List<OccupantLinksPlace>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksPlace>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksPlace>>(
          key, OccupantLinksPlace.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantLinksPlace[href=$href, iriTemplate=$iriTemplate]';

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
