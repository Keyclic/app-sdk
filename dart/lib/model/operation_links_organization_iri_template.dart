//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOrganizationIriTemplate {
  /// Returns a new [OperationLinksOrganizationIriTemplate] instance.
  OperationLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOrganizationIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksOrganizationIriTemplate>[];
    }

    return json.fold(<OperationLinksOrganizationIriTemplate>[],
        (List<OperationLinksOrganizationIriTemplate> previousValue, element) {
      final OperationLinksOrganizationIriTemplate? object =
          OperationLinksOrganizationIriTemplate.fromJson(element);
      if (object is OperationLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksOrganizationIriTemplate>{},
        (Map<String, OperationLinksOrganizationIriTemplate> previousValue,
            element) {
      final OperationLinksOrganizationIriTemplate? object =
          OperationLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is OperationLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksOrganizationIriTemplate>>(
          key, OperationLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksOrganizationIriTemplate[mapping=$mapping]';

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
