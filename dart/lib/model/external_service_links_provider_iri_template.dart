//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksProviderIriTemplate {
  /// Returns a new [ExternalServiceLinksProviderIriTemplate] instance.
  ExternalServiceLinksProviderIriTemplate({
    this.mapping,
  });

  /// Returns a new [ExternalServiceLinksProviderIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksProviderIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServiceLinksProviderIriTemplate(
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

    return other is ExternalServiceLinksProviderIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ExternalServiceLinksProviderIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksProviderIriTemplate>[];
    }

    return json.fold(<ExternalServiceLinksProviderIriTemplate>[],
        (List<ExternalServiceLinksProviderIriTemplate> previousValue, element) {
      final ExternalServiceLinksProviderIriTemplate? object =
          ExternalServiceLinksProviderIriTemplate.fromJson(element);
      if (object is ExternalServiceLinksProviderIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinksProviderIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksProviderIriTemplate>{};
    }

    return json.entries
        .fold(<String, ExternalServiceLinksProviderIriTemplate>{},
            (Map<String, ExternalServiceLinksProviderIriTemplate> previousValue,
                element) {
      final ExternalServiceLinksProviderIriTemplate? object =
          ExternalServiceLinksProviderIriTemplate.fromJson(element.value);
      if (object is ExternalServiceLinksProviderIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinksProviderIriTemplate-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksProviderIriTemplate>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinksProviderIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinksProviderIriTemplate>>(
          key, ExternalServiceLinksProviderIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServiceLinksProviderIriTemplate[mapping=$mapping]';

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
