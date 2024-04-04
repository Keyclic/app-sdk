//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinksDispatcherIriTemplateMapping {
  /// Returns a new [OrganizationLinksDispatcherIriTemplateMapping] instance.
  OrganizationLinksDispatcherIriTemplateMapping({
    this.dispatcher,
  });

  /// Returns a new [OrganizationLinksDispatcherIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinksDispatcherIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinksDispatcherIriTemplateMapping(
      dispatcher: json[r'dispatcher'],
    );
  }

  String? dispatcher;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksDispatcherIriTemplateMapping &&
        other.dispatcher == dispatcher;
  }

  @override
  int get hashCode => (dispatcher == null ? 0 : dispatcher.hashCode);

  static List<OrganizationLinksDispatcherIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinksDispatcherIriTemplateMapping>[];
    }

    return json.fold(<OrganizationLinksDispatcherIriTemplateMapping>[],
        (List<OrganizationLinksDispatcherIriTemplateMapping> previousValue,
            element) {
      final OrganizationLinksDispatcherIriTemplateMapping? object =
          OrganizationLinksDispatcherIriTemplateMapping.fromJson(element);
      if (object is OrganizationLinksDispatcherIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinksDispatcherIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinksDispatcherIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, OrganizationLinksDispatcherIriTemplateMapping>{},
            (Map<String, OrganizationLinksDispatcherIriTemplateMapping>
                    previousValue,
                element) {
      final OrganizationLinksDispatcherIriTemplateMapping? object =
          OrganizationLinksDispatcherIriTemplateMapping.fromJson(element.value);
      if (object is OrganizationLinksDispatcherIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinksDispatcherIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OrganizationLinksDispatcherIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinksDispatcherIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<OrganizationLinksDispatcherIriTemplateMapping>>(key,
          OrganizationLinksDispatcherIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinksDispatcherIriTemplateMapping[dispatcher=$dispatcher]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'dispatcher'))
        r'dispatcher': dispatcher,
    };
  }
}
