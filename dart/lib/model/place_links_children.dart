//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlaceLinksChildren {
  /// Returns a new [PlaceLinksChildren] instance.
  PlaceLinksChildren({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlaceLinksChildren] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceLinksChildren? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksChildren(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : PlaceLinksChildrenIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the children associated to the given place.
  String? href;

  PlaceLinksChildrenIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksChildren &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlaceLinksChildren> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceLinksChildren>[];
    }

    return json.fold(<PlaceLinksChildren>[],
        (List<PlaceLinksChildren> previousValue, element) {
      final PlaceLinksChildren? object = PlaceLinksChildren.fromJson(element);
      if (object is PlaceLinksChildren) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceLinksChildren> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceLinksChildren>{};
    }

    return json.entries.fold(<String, PlaceLinksChildren>{},
        (Map<String, PlaceLinksChildren> previousValue, element) {
      final PlaceLinksChildren? object =
          PlaceLinksChildren.fromJson(element.value);
      if (object is PlaceLinksChildren) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceLinksChildren-objects as value to a dart map
  static Map<String, List<PlaceLinksChildren>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceLinksChildren>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceLinksChildren>>(
          key, PlaceLinksChildren.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceLinksChildren[href=$href, iriTemplate=$iriTemplate]';

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
