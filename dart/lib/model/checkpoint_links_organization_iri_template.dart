//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointLinksOrganizationIriTemplate {
  /// Returns a new [CheckpointLinksOrganizationIriTemplate] instance.
  CheckpointLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [CheckpointLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CheckpointLinksOrganizationIriTemplate(
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

    return other is CheckpointLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<CheckpointLinksOrganizationIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <CheckpointLinksOrganizationIriTemplate>[];
    }

    return json.fold(<CheckpointLinksOrganizationIriTemplate>[],
        (List<CheckpointLinksOrganizationIriTemplate> previousValue, element) {
      final CheckpointLinksOrganizationIriTemplate? object =
          CheckpointLinksOrganizationIriTemplate.fromJson(element);
      if (object is CheckpointLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CheckpointLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, CheckpointLinksOrganizationIriTemplate>{},
        (Map<String, CheckpointLinksOrganizationIriTemplate> previousValue,
            element) {
      final CheckpointLinksOrganizationIriTemplate? object =
          CheckpointLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is CheckpointLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CheckpointLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<CheckpointLinksOrganizationIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CheckpointLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CheckpointLinksOrganizationIriTemplate>>(
          key, CheckpointLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CheckpointLinksOrganizationIriTemplate[mapping=$mapping]';

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
