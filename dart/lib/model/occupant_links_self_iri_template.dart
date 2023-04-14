//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksSelfIriTemplate {
  /// Returns a new [OccupantLinksSelfIriTemplate] instance.
  OccupantLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OccupantLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelfIriTemplate(
      mapping: OccupantLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  OccupantLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OccupantLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksSelfIriTemplate>[];
    }

    return json.fold(<OccupantLinksSelfIriTemplate>[],
        (List<OccupantLinksSelfIriTemplate> previousValue, element) {
      final OccupantLinksSelfIriTemplate? object =
          OccupantLinksSelfIriTemplate.fromJson(element);
      if (object is OccupantLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, OccupantLinksSelfIriTemplate>{},
        (Map<String, OccupantLinksSelfIriTemplate> previousValue, element) {
      final OccupantLinksSelfIriTemplate? object =
          OccupantLinksSelfIriTemplate.fromJson(element.value);
      if (object is OccupantLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OccupantLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksSelfIriTemplate>>(
          key, OccupantLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OccupantLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
