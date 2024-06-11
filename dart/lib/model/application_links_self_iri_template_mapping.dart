//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksSelfIriTemplateMapping {
  /// Returns a new [ApplicationLinksSelfIriTemplateMapping] instance.
  ApplicationLinksSelfIriTemplateMapping({
    this.application,
  });

  /// Returns a new [ApplicationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksSelfIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationLinksSelfIriTemplateMapping(
      application: json[r'application'],
    );
  }

  String? application;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplateMapping &&
        other.application == application;
  }

  @override
  int get hashCode => (application == null ? 0 : application.hashCode);

  static List<ApplicationLinksSelfIriTemplateMapping> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ApplicationLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<ApplicationLinksSelfIriTemplateMapping>[],
        (List<ApplicationLinksSelfIriTemplateMapping> previousValue, element) {
      final ApplicationLinksSelfIriTemplateMapping? object =
          ApplicationLinksSelfIriTemplateMapping.fromJson(element);
      if (object is ApplicationLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, ApplicationLinksSelfIriTemplateMapping>{},
        (Map<String, ApplicationLinksSelfIriTemplateMapping> previousValue,
            element) {
      final ApplicationLinksSelfIriTemplateMapping? object =
          ApplicationLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is ApplicationLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinksSelfIriTemplateMapping>>(
          key, ApplicationLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationLinksSelfIriTemplateMapping[application=$application]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'application'))
        r'application': application,
    };
  }
}
