//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksGeo {
  /// Returns a new [PlaceLinksGeo] instance.
  PlaceLinksGeo({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksGeo] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksGeo? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksGeo(
      href: json[r'href'],
      iriTemplate: PlaceLinksGeoIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the geo associated to the given place.
  String? href;

  PlaceLinksGeoIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksGeo &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksGeo> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceLinksGeo>[];
    }

    return json.fold(<PlaceLinksGeo>[],
        (List<PlaceLinksGeo> previousValue, element) {
      final PlaceLinksGeo? object = PlaceLinksGeo.fromJson(element);
      if (object is PlaceLinksGeo) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksGeo> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksGeo>{};
    }

    return json.entries.fold(<String, PlaceLinksGeo>{},
        (Map<String, PlaceLinksGeo> previousValue, element) {
      final PlaceLinksGeo? object = PlaceLinksGeo.fromJson(element.value);
      if (object is PlaceLinksGeo) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksGeo-objects as value to a dart map
  static Map<String, List<PlaceLinksGeo>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksGeo>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksGeo>>(
          key, PlaceLinksGeo.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksGeo[href=$href, iriTemplate=$iriTemplate]';

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
