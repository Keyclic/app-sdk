//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksCreatedByIriTemplate {
  /// Returns a new [ProcedureLinksCreatedByIriTemplate] instance.
  ProcedureLinksCreatedByIriTemplate({
    this.mapping,
  });

  /// Returns a new [ProcedureLinksCreatedByIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksCreatedByIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ProcedureLinksCreatedByIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksCreatedByIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ProcedureLinksCreatedByIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <ProcedureLinksCreatedByIriTemplate>[];
    }

    return json.fold(<ProcedureLinksCreatedByIriTemplate>[],
        (List<ProcedureLinksCreatedByIriTemplate> previousValue, element) {
      final ProcedureLinksCreatedByIriTemplate? object =
          ProcedureLinksCreatedByIriTemplate.fromJson(element);
      if (object is ProcedureLinksCreatedByIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksCreatedByIriTemplate>{};
    }

    return json.entries.fold(<String, ProcedureLinksCreatedByIriTemplate>{},
        (Map<String, ProcedureLinksCreatedByIriTemplate> previousValue,
            element) {
      final ProcedureLinksCreatedByIriTemplate? object =
          ProcedureLinksCreatedByIriTemplate.fromJson(element.value);
      if (object is ProcedureLinksCreatedByIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksCreatedByIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksCreatedByIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksCreatedByIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksCreatedByIriTemplate>>(
          key, ProcedureLinksCreatedByIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProcedureLinksCreatedByIriTemplate[mapping=$mapping]';

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
