//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImageIriTemplate {
  /// Returns a new [OperationLinksImageIriTemplate] instance.
  OperationLinksImageIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksImageIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImageIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImageIriTemplate(
      mapping: OperationLinksImageIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  OperationLinksImageIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImageIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksImageIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImageIriTemplate>[];
    }
    return json
        .map((value) {
          return OperationLinksImageIriTemplate.fromJson(value);
        })
        .whereType<OperationLinksImageIriTemplate>()
        .toList();
  }

  static Map<String, OperationLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImageIriTemplate>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksImageIriTemplate?>(
            key, OperationLinksImageIriTemplate.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksImageIriTemplate>;
  }

  // maps a json object with a list of OperationLinksImageIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksImageIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksImageIriTemplate>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksImageIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksImageIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}
