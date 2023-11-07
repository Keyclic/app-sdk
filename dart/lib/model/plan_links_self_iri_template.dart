//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksSelfIriTemplate {
  /// Returns a new [PlanLinksSelfIriTemplate] instance.
  PlanLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelfIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : MarkerLinksPlanIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  MarkerLinksPlanIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksSelfIriTemplate> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlanLinksSelfIriTemplate>[];
    }

    return json.fold(<PlanLinksSelfIriTemplate>[],
        (List<PlanLinksSelfIriTemplate> previousValue, element) {
      final PlanLinksSelfIriTemplate? object =
          PlanLinksSelfIriTemplate.fromJson(element);
      if (object is PlanLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, PlanLinksSelfIriTemplate>{},
        (Map<String, PlanLinksSelfIriTemplate> previousValue, element) {
      final PlanLinksSelfIriTemplate? object =
          PlanLinksSelfIriTemplate.fromJson(element.value);
      if (object is PlanLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksSelfIriTemplate>>(
          key, PlanLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
