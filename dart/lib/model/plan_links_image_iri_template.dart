//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksImageIriTemplate {
  /// Returns a new [PlanLinksImageIriTemplate] instance.
  PlanLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [PlanLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksImageIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlanLinksImageIriTemplate(
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

    return other is PlanLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<PlanLinksImageIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlanLinksImageIriTemplate>[];
    }

    return json.fold(<PlanLinksImageIriTemplate>[],
        (List<PlanLinksImageIriTemplate> previousValue, element) {
      final PlanLinksImageIriTemplate? object =
          PlanLinksImageIriTemplate.fromJson(element);
      if (object is PlanLinksImageIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksImageIriTemplate>{};
    }

    return json.entries.fold(<String, PlanLinksImageIriTemplate>{},
        (Map<String, PlanLinksImageIriTemplate> previousValue, element) {
      final PlanLinksImageIriTemplate? object =
          PlanLinksImageIriTemplate.fromJson(element.value);
      if (object is PlanLinksImageIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<PlanLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksImageIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksImageIriTemplate>>(
          key, PlanLinksImageIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksImageIriTemplate[mapping=$mapping]';

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
