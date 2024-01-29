//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksSelfIriTemplate {
  /// Returns a new [PublicationLinksSelfIriTemplate] instance.
  PublicationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplate(
      mapping:
          PublicationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  PublicationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksSelfIriTemplate>[];
    }

    return json.fold(<PublicationLinksSelfIriTemplate>[],
        (List<PublicationLinksSelfIriTemplate> previousValue, element) {
      final PublicationLinksSelfIriTemplate? object =
          PublicationLinksSelfIriTemplate.fromJson(element);
      if (object is PublicationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, PublicationLinksSelfIriTemplate>{},
        (Map<String, PublicationLinksSelfIriTemplate> previousValue, element) {
      final PublicationLinksSelfIriTemplate? object =
          PublicationLinksSelfIriTemplate.fromJson(element.value);
      if (object is PublicationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksSelfIriTemplate>>(
          key, PublicationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationLinksSelfIriTemplate[mapping=$mapping]';

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
