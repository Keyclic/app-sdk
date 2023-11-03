//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinksSelfIriTemplate {
  /// Returns a new [InternalServiceLinksSelfIriTemplate] instance.
  InternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [InternalServiceLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinksSelfIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplate(
      mapping:
          InternalServiceLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  InternalServiceLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinksSelfIriTemplate>[];
    }

    return json.fold(<InternalServiceLinksSelfIriTemplate>[],
        (List<InternalServiceLinksSelfIriTemplate> previousValue, element) {
      final InternalServiceLinksSelfIriTemplate? object =
          InternalServiceLinksSelfIriTemplate.fromJson(element);
      if (object is InternalServiceLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, InternalServiceLinksSelfIriTemplate>{},
        (Map<String, InternalServiceLinksSelfIriTemplate> previousValue,
            element) {
      final InternalServiceLinksSelfIriTemplate? object =
          InternalServiceLinksSelfIriTemplate.fromJson(element.value);
      if (object is InternalServiceLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<InternalServiceLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceLinksSelfIriTemplate>>(
          key, InternalServiceLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'InternalServiceLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
