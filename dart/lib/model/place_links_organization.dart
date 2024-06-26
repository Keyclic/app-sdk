//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksOrganization {
  /// Returns a new [PlaceLinksOrganization] instance.
  PlaceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksOrganization? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          PlaceLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given place.
  String? href;

  PlaceLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksOrganization> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceLinksOrganization>[];
    }

    return json.fold(<PlaceLinksOrganization>[],
        (List<PlaceLinksOrganization> previousValue, element) {
      final PlaceLinksOrganization? object =
          PlaceLinksOrganization.fromJson(element);
      if (object is PlaceLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksOrganization>{};
    }

    return json.entries.fold(<String, PlaceLinksOrganization>{},
        (Map<String, PlaceLinksOrganization> previousValue, element) {
      final PlaceLinksOrganization? object =
          PlaceLinksOrganization.fromJson(element.value);
      if (object is PlaceLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksOrganization-objects as value to a dart map
  static Map<String, List<PlaceLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksOrganization>>(
          key, PlaceLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

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
