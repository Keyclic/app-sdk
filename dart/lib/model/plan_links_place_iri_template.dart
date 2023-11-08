//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksPlaceIriTemplate {
  /// Returns a new [PlanLinksPlaceIriTemplate] instance.
  PlanLinksPlaceIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksPlaceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksPlaceIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksPlaceIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : BookmarkLinksPlaceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksPlaceIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksPlaceIriTemplate> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PlanLinksPlaceIriTemplate>[];
    }

    return json.fold(<PlanLinksPlaceIriTemplate>[],
        (List<PlanLinksPlaceIriTemplate> previousValue, element) {
      final PlanLinksPlaceIriTemplate? object =
          PlanLinksPlaceIriTemplate.fromJson(element);
      if (object is PlanLinksPlaceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksPlaceIriTemplate>{};
    }

    return json.entries.fold(<String, PlanLinksPlaceIriTemplate>{},
        (Map<String, PlanLinksPlaceIriTemplate> previousValue, element) {
      final PlanLinksPlaceIriTemplate? object =
          PlanLinksPlaceIriTemplate.fromJson(element.value);
      if (object is PlanLinksPlaceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksPlaceIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksPlaceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksPlaceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksPlaceIriTemplate>>(
          key, PlanLinksPlaceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksPlaceIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
