//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksSelf {
  /// Returns a new [MarkerLinksSelf] instance.
  MarkerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MarkerLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerLinksSelf(
      href: json[r'href'],
      iriTemplate: MarkerLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given marker.
  String? href;

  MarkerLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MarkerLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksSelf>[];
    }

    return json.fold(<MarkerLinksSelf>[],
        (List<MarkerLinksSelf> previousValue, element) {
      final MarkerLinksSelf? object = MarkerLinksSelf.fromJson(element);
      if (object is MarkerLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelf>{};
    }

    return json.entries.fold(<String, MarkerLinksSelf>{},
        (Map<String, MarkerLinksSelf> previousValue, element) {
      final MarkerLinksSelf? object = MarkerLinksSelf.fromJson(element.value);
      if (object is MarkerLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksSelf-objects as value to a dart map
  static Map<String, List<MarkerLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksSelf>>(
          key, MarkerLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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
