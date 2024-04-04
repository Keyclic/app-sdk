//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksSelfIriTemplate {
  /// Returns a new [OperationLinksSelfIriTemplate] instance.
  OperationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksSelfIriTemplate(
      mapping: OperationLinksAssignmentsIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksSelfIriTemplate>[];
    }

    return json.fold(<OperationLinksSelfIriTemplate>[],
        (List<OperationLinksSelfIriTemplate> previousValue, element) {
      final OperationLinksSelfIriTemplate? object =
          OperationLinksSelfIriTemplate.fromJson(element);
      if (object is OperationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksSelfIriTemplate>{},
        (Map<String, OperationLinksSelfIriTemplate> previousValue, element) {
      final OperationLinksSelfIriTemplate? object =
          OperationLinksSelfIriTemplate.fromJson(element.value);
      if (object is OperationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksSelfIriTemplate>>(
          key, OperationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksSelfIriTemplate[mapping=$mapping]';

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
