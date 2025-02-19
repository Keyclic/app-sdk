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
  static OperationLinksImagesIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksImagesIriTemplate(
      mapping: FeedbackLinksImagesIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  FeedbackLinksImagesIriTemplateMapping? mapping;

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

  static List<OperationLinksImagesIriTemplate> listFromJson(Iterable? json) {
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
