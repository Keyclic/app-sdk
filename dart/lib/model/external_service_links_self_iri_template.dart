//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksSelfIriTemplate {
  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance.
  ExternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [ExternalServiceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinksSelfIriTemplate(
      mapping:
          ExternalServiceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  ExternalServiceLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ExternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinksSelfIriTemplate>[];
    }

    return json.fold(<ExternalServiceLinksSelfIriTemplate>[],
        (List<ExternalServiceLinksSelfIriTemplate> previousValue, element) {
      final ExternalServiceLinksSelfIriTemplate? object =
          ExternalServiceLinksSelfIriTemplate.fromJson(element);
      if (object is ExternalServiceLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, ExternalServiceLinksSelfIriTemplate>{},
        (Map<String, ExternalServiceLinksSelfIriTemplate> previousValue,
            element) {
      final ExternalServiceLinksSelfIriTemplate? object =
          ExternalServiceLinksSelfIriTemplate.fromJson(element.value);
      if (object is ExternalServiceLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinksSelfIriTemplate>>(
          key, ExternalServiceLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ExternalServiceLinksSelfIriTemplate[mapping=$mapping]';

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
