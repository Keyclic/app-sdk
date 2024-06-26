//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlan {
  /// Returns a new [MarkerLinksPlan] instance.
  MarkerLinksPlan({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [MarkerLinksPlan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlan? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerLinksPlan(
      href: json[r'href'],
      iriTemplate: MarkerLinksPlanIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the plan associated to the given marker.
  String? href;

  MarkerLinksPlanIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlan &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<MarkerLinksPlan> listFromJson(Iterable? json) {
    if (json == null) {
      return <MarkerLinksPlan>[];
    }

    return json.fold(<MarkerLinksPlan>[],
        (List<MarkerLinksPlan> previousValue, element) {
      final MarkerLinksPlan? object = MarkerLinksPlan.fromJson(element);
      if (object is MarkerLinksPlan) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksPlan> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlan>{};
    }

    return json.entries.fold(<String, MarkerLinksPlan>{},
        (Map<String, MarkerLinksPlan> previousValue, element) {
      final MarkerLinksPlan? object = MarkerLinksPlan.fromJson(element.value);
      if (object is MarkerLinksPlan) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksPlan-objects as value to a dart map
  static Map<String, List<MarkerLinksPlan>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksPlan>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksPlan>>(
          key, MarkerLinksPlan.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksPlan[href=$href, iriTemplate=$iriTemplate]';

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
