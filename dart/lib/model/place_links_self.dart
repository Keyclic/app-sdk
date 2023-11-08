//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksSelf {
  /// Returns a new [PlaceLinksSelf] instance.
  PlaceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : PlaceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given place.
  String? href;

  PlaceLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksSelf> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksSelf>[];
    }

    return json.fold(<PlaceLinksSelf>[],
        (List<PlaceLinksSelf> previousValue, element) {
      final PlaceLinksSelf? object = PlaceLinksSelf.fromJson(element);
      if (object is PlaceLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksSelf>{};
    }

    return json.entries.fold(<String, PlaceLinksSelf>{},
        (Map<String, PlaceLinksSelf> previousValue, element) {
      final PlaceLinksSelf? object = PlaceLinksSelf.fromJson(element.value);
      if (object is PlaceLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksSelf-objects as value to a dart map
  static Map<String, List<PlaceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksSelf>>(
          key, PlaceLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
