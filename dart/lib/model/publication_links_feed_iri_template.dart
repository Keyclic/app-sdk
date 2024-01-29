//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksFeedIriTemplate {
  /// Returns a new [PublicationLinksFeedIriTemplate] instance.
  PublicationLinksFeedIriTemplate({
    this.mapping,
  });

  /// Returns a new [PublicationLinksFeedIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksFeedIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksFeedIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksFeedIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PublicationLinksFeedIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksFeedIriTemplate>[];
    }

    return json.fold(<PublicationLinksFeedIriTemplate>[],
        (List<PublicationLinksFeedIriTemplate> previousValue, element) {
      final PublicationLinksFeedIriTemplate? object =
          PublicationLinksFeedIriTemplate.fromJson(element);
      if (object is PublicationLinksFeedIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksFeedIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksFeedIriTemplate>{};
    }

    return json.entries.fold(<String, PublicationLinksFeedIriTemplate>{},
        (Map<String, PublicationLinksFeedIriTemplate> previousValue, element) {
      final PublicationLinksFeedIriTemplate? object =
          PublicationLinksFeedIriTemplate.fromJson(element.value);
      if (object is PublicationLinksFeedIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksFeedIriTemplate-objects as value to a dart map
  static Map<String, List<PublicationLinksFeedIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksFeedIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksFeedIriTemplate>>(
          key, PublicationLinksFeedIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PublicationLinksFeedIriTemplate[mapping=$mapping]';

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
