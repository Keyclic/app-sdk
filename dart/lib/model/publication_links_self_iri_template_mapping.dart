//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksSelfIriTemplateMapping {
  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance.
  PublicationLinksSelfIriTemplateMapping({
    this.publication,
  });

  /// Returns a new [PublicationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplateMapping(
      publication: json[r'publication'],
    );
  }

  String? publication;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplateMapping &&
        other.publication == publication;
  }

  @override
  int get hashCode => (publication == null ? 0 : publication.hashCode);

  static List<PublicationLinksSelfIriTemplateMapping> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<PublicationLinksSelfIriTemplateMapping>[],
        (List<PublicationLinksSelfIriTemplateMapping> previousValue, element) {
      final PublicationLinksSelfIriTemplateMapping? object =
          PublicationLinksSelfIriTemplateMapping.fromJson(element);
      if (object is PublicationLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, PublicationLinksSelfIriTemplateMapping>{},
        (Map<String, PublicationLinksSelfIriTemplateMapping> previousValue,
            element) {
      final PublicationLinksSelfIriTemplateMapping? object =
          PublicationLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is PublicationLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<PublicationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksSelfIriTemplateMapping>>(
          key, PublicationLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinksSelfIriTemplateMapping[publication=$publication]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && publication != null) ||
          (keys?.contains(r'publication') ?? false))
        r'publication': publication,
    };
  }
}
