//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksSelfIriTemplate {
  /// Returns a new [MarkerLinksSelfIriTemplate] instance.
  MarkerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MarkerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerLinksSelfIriTemplate(
      mapping: MarkerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MarkerLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksSelfIriTemplate>[];
    }

    return json.fold(<MarkerLinksSelfIriTemplate>[],
        (List<MarkerLinksSelfIriTemplate> previousValue, element) {
      final MarkerLinksSelfIriTemplate? object =
          MarkerLinksSelfIriTemplate.fromJson(element);
      if (object is MarkerLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, MarkerLinksSelfIriTemplate>{},
        (Map<String, MarkerLinksSelfIriTemplate> previousValue, element) {
      final MarkerLinksSelfIriTemplate? object =
          MarkerLinksSelfIriTemplate.fromJson(element.value);
      if (object is MarkerLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MarkerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksSelfIriTemplate>>(
          key, MarkerLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksSelfIriTemplate[mapping=$mapping]';

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
