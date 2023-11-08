//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImagesIriTemplate {
  /// Returns a new [OperationLinksImagesIriTemplate] instance.
  OperationLinksImagesIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksImagesIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImagesIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImagesIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : OperationLinksImagesIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  OperationLinksImagesIriTemplateMapping? mapping;

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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImagesIriTemplate>[];
    }

    return json.fold(<OperationLinksImagesIriTemplate>[],
        (List<OperationLinksImagesIriTemplate> previousValue, element) {
      final OperationLinksImagesIriTemplate? object =
          OperationLinksImagesIriTemplate.fromJson(element);
      if (object is OperationLinksImagesIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImagesIriTemplate>{};
    }

    return json.entries.fold(<String, OperationLinksImagesIriTemplate>{},
        (Map<String, OperationLinksImagesIriTemplate> previousValue, element) {
      final OperationLinksImagesIriTemplate? object =
          OperationLinksImagesIriTemplate.fromJson(element.value);
      if (object is OperationLinksImagesIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksImagesIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksImagesIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksImagesIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksImagesIriTemplate>>(
          key, OperationLinksImagesIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'OperationLinksImagesIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}
