//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlanIriTemplate {
  /// Returns a new [MarkerLinksPlanIriTemplate] instance.
  MarkerLinksPlanIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksPlanIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlanIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerLinksPlanIriTemplate(
      mapping: MarkerLinksPlanIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlanIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksPlanIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksPlanIriTemplate>[];
    }

    return json.fold(<MarkerLinksPlanIriTemplate>[],
        (List<MarkerLinksPlanIriTemplate> previousValue, element) {
      final MarkerLinksPlanIriTemplate? object =
          MarkerLinksPlanIriTemplate.fromJson(element);
      if (object is MarkerLinksPlanIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksPlanIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlanIriTemplate>{};
    }

    return json.entries.fold(<String, MarkerLinksPlanIriTemplate>{},
        (Map<String, MarkerLinksPlanIriTemplate> previousValue, element) {
      final MarkerLinksPlanIriTemplate? object =
          MarkerLinksPlanIriTemplate.fromJson(element.value);
      if (object is MarkerLinksPlanIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksPlanIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksPlanIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksPlanIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksPlanIriTemplate>>(
          key, MarkerLinksPlanIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksPlanIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
