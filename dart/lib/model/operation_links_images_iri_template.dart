//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksImagesIriTemplate {
  /// Returns a new [OperationLinksImagesIriTemplate] instance.
  OperationLinksImagesIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksImagesIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImagesIriTemplate(
      mapping:
          OperationLinksImagesIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  OperationLinksImagesIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksImagesIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OperationLinksImagesIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksImagesIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksImagesIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksImagesIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksImagesIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksImagesIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksImagesIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksImagesIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksImagesIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
