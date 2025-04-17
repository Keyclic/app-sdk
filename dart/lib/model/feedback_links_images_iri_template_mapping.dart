//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinksImagesIriTemplateMapping {
  /// Returns a new [FeedbackLinksImagesIriTemplateMapping] instance.
  FeedbackLinksImagesIriTemplateMapping({
    this.file,
  });

  /// Returns a new [FeedbackLinksImagesIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinksImagesIriTemplateMapping? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinksImagesIriTemplateMapping(
      file: json[r'file'],
    );
  }

  String? file;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplateMapping && other.file == file;
  }

  @override
  int get hashCode => (file == null ? 0 : file.hashCode);

  static List<FeedbackLinksImagesIriTemplateMapping> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <FeedbackLinksImagesIriTemplateMapping>[];
    }

    return json.fold(<FeedbackLinksImagesIriTemplateMapping>[],
        (List<FeedbackLinksImagesIriTemplateMapping> previousValue, element) {
      final FeedbackLinksImagesIriTemplateMapping? object =
          FeedbackLinksImagesIriTemplateMapping.fromJson(element);
      if (object is FeedbackLinksImagesIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinksImagesIriTemplateMapping>{};
    }

    return json.entries.fold(<String, FeedbackLinksImagesIriTemplateMapping>{},
        (Map<String, FeedbackLinksImagesIriTemplateMapping> previousValue,
            element) {
      final FeedbackLinksImagesIriTemplateMapping? object =
          FeedbackLinksImagesIriTemplateMapping.fromJson(element.value);
      if (object is FeedbackLinksImagesIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinksImagesIriTemplateMapping-objects as value to a dart map
  static Map<String, List<FeedbackLinksImagesIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinksImagesIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinksImagesIriTemplateMapping>>(
          key, FeedbackLinksImagesIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackLinksImagesIriTemplateMapping[file=$file]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'file')) r'file': file,
    };
  }
}
