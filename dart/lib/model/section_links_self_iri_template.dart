//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionLinksSelfIriTemplate {
  /// Returns a new [SectionLinksSelfIriTemplate] instance.
  SectionLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [SectionLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SectionLinksSelfIriTemplate(
      mapping: ArticleLinksSectionIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ArticleLinksSectionIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SectionLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <SectionLinksSelfIriTemplate>[];
    }

    return json.fold(<SectionLinksSelfIriTemplate>[],
        (List<SectionLinksSelfIriTemplate> previousValue, element) {
      final SectionLinksSelfIriTemplate? object =
          SectionLinksSelfIriTemplate.fromJson(element);
      if (object is SectionLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, SectionLinksSelfIriTemplate>{},
        (Map<String, SectionLinksSelfIriTemplate> previousValue, element) {
      final SectionLinksSelfIriTemplate? object =
          SectionLinksSelfIriTemplate.fromJson(element.value);
      if (object is SectionLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<SectionLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionLinksSelfIriTemplate>>(
          key, SectionLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'SectionLinksSelfIriTemplate[mapping=$mapping]';

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
