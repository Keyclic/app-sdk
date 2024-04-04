//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureLinksSelfIriTemplate {
  /// Returns a new [ProcedureLinksSelfIriTemplate] instance.
  ProcedureLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ProcedureLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ProcedureLinksSelfIriTemplate(
      mapping:
          DocumentLinksProcedureIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  DocumentLinksProcedureIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ProcedureLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureLinksSelfIriTemplate>[];
    }

    return json.fold(<ProcedureLinksSelfIriTemplate>[],
        (List<ProcedureLinksSelfIriTemplate> previousValue, element) {
      final ProcedureLinksSelfIriTemplate? object =
          ProcedureLinksSelfIriTemplate.fromJson(element);
      if (object is ProcedureLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ProcedureLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ProcedureLinksSelfIriTemplate>{},
        (Map<String, ProcedureLinksSelfIriTemplate> previousValue, element) {
      final ProcedureLinksSelfIriTemplate? object =
          ProcedureLinksSelfIriTemplate.fromJson(element.value);
      if (object is ProcedureLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ProcedureLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ProcedureLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ProcedureLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ProcedureLinksSelfIriTemplate>>(
          key, ProcedureLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ProcedureLinksSelfIriTemplate[mapping=$mapping]';

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
