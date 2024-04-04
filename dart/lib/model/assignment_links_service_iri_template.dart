//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksServiceIriTemplate {
  /// Returns a new [AssignmentLinksServiceIriTemplate] instance.
  AssignmentLinksServiceIriTemplate({
    this.mapping,
  });

  /// Returns a new [AssignmentLinksServiceIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksServiceIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksServiceIriTemplate(
      mapping:
          AssignmentLinksServiceIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksServiceIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksServiceIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<AssignmentLinksServiceIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksServiceIriTemplate>[];
    }

    return json.fold(<AssignmentLinksServiceIriTemplate>[],
        (List<AssignmentLinksServiceIriTemplate> previousValue, element) {
      final AssignmentLinksServiceIriTemplate? object =
          AssignmentLinksServiceIriTemplate.fromJson(element);
      if (object is AssignmentLinksServiceIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksServiceIriTemplate>{};
    }

    return json.entries.fold(<String, AssignmentLinksServiceIriTemplate>{},
        (Map<String, AssignmentLinksServiceIriTemplate> previousValue,
            element) {
      final AssignmentLinksServiceIriTemplate? object =
          AssignmentLinksServiceIriTemplate.fromJson(element.value);
      if (object is AssignmentLinksServiceIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksServiceIriTemplate-objects as value to a dart map
  static Map<String, List<AssignmentLinksServiceIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksServiceIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksServiceIriTemplate>>(
          key, AssignmentLinksServiceIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'AssignmentLinksServiceIriTemplate[mapping=$mapping]';

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
