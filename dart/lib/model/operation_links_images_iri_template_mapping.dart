//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImagesIriTemplateMapping {
  /// Returns a new [OperationLinksImagesIriTemplateMapping] instance.
  OperationLinksImagesIriTemplateMapping({
    this.operation,
    this.image,
  });

  /// Returns a new [OperationLinksImagesIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImagesIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImagesIriTemplateMapping(
      operation: json[r'operation'],
      image: json[r'image'],
    );
  }

  String? operation;

  String? image;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImagesIriTemplateMapping &&
        other.operation == operation &&
        other.image == image;
  }

  @override
  int get hashCode =>
      (operation == null ? 0 : operation.hashCode) +
      (image == null ? 0 : image.hashCode);

  static List<OperationLinksImagesIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImagesIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return OperationLinksImagesIriTemplateMapping.fromJson(value);
        })
        .whereType<OperationLinksImagesIriTemplateMapping>()
        .toList();
  }

  static Map<String, OperationLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImagesIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksImagesIriTemplateMapping?>(
            key, OperationLinksImagesIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksImagesIriTemplateMapping>;
  }

  // maps a json object with a list of OperationLinksImagesIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksImagesIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OperationLinksImagesIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OperationLinksImagesIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksImagesIriTemplateMapping[operation=$operation, image=$image]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (operation != null) r'operation': operation,
      if (image != null) r'image': image,
    };
  }
}
