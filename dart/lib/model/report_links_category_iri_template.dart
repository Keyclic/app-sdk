//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinksCategoryIriTemplate {
  /// Returns a new [ReportLinksCategoryIriTemplate] instance.
  ReportLinksCategoryIriTemplate({
    this.mapping,
  });

  /// Returns a new [ReportLinksCategoryIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinksCategoryIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCategoryIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : CategoryLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategoryIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<ReportLinksCategoryIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ReportLinksCategoryIriTemplate>[];
    }

    return json.fold(<ReportLinksCategoryIriTemplate>[],
        (List<ReportLinksCategoryIriTemplate> previousValue, element) {
      final ReportLinksCategoryIriTemplate? object =
          ReportLinksCategoryIriTemplate.fromJson(element);
      if (object is ReportLinksCategoryIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinksCategoryIriTemplate>{};
    }

    return json.entries.fold(<String, ReportLinksCategoryIriTemplate>{},
        (Map<String, ReportLinksCategoryIriTemplate> previousValue, element) {
      final ReportLinksCategoryIriTemplate? object =
          ReportLinksCategoryIriTemplate.fromJson(element.value);
      if (object is ReportLinksCategoryIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinksCategoryIriTemplate-objects as value to a dart map
  static Map<String, List<ReportLinksCategoryIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinksCategoryIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinksCategoryIriTemplate>>(
          key, ReportLinksCategoryIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReportLinksCategoryIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
