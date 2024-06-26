//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksImagesIriTemplate {
  /// Returns a new [FeedbackLinksImagesIriTemplate] instance.
  FeedbackLinksImagesIriTemplate({
    this.mapping,
  });

  /// Returns a new [FeedbackLinksImagesIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksImagesIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksImagesIriTemplate(
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

    return other is FeedbackLinksImagesIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<FeedbackLinksImagesIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <FeedbackLinksImagesIriTemplate>[];
    }

    return json.fold(<FeedbackLinksImagesIriTemplate>[],
        (List<FeedbackLinksImagesIriTemplate> previousValue, element) {
      final FeedbackLinksImagesIriTemplate? object =
          FeedbackLinksImagesIriTemplate.fromJson(element);
      if (object is FeedbackLinksImagesIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImagesIriTemplate>{};
    }

    return json.entries.fold(<String, FeedbackLinksImagesIriTemplate>{},
        (Map<String, FeedbackLinksImagesIriTemplate> previousValue, element) {
      final FeedbackLinksImagesIriTemplate? object =
          FeedbackLinksImagesIriTemplate.fromJson(element.value);
      if (object is FeedbackLinksImagesIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksImagesIriTemplate-objects as value to a dart map
  static Map<String, List<FeedbackLinksImagesIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksImagesIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksImagesIriTemplate>>(
          key, FeedbackLinksImagesIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksImagesIriTemplate[mapping=$mapping]';

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
