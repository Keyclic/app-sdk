//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImageIriTemplateMapping {
  /// Returns a new [OperationLinksImageIriTemplateMapping] instance.
  OperationLinksImageIriTemplateMapping({
    this.image,
    this.operation,
  });

  /// Returns a new [OperationLinksImageIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImageIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImageIriTemplateMapping(
      image: json[r'image'],
      operation: json[r'operation'],
    );
  }

  String? image;

  String? operation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImageIriTemplateMapping &&
        other.image == image &&
        other.operation == operation;
  }

  @override
  int get hashCode =>
      (image == null ? 0 : image.hashCode) +
      (operation == null ? 0 : operation.hashCode);

  static List<OperationLinksImageIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImageIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return OperationLinksImageIriTemplateMapping.fromJson(value);
        })
        .whereType<OperationLinksImageIriTemplateMapping>()
        .toList();
  }

  static Map<String, OperationLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImageIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, OperationLinksImageIriTemplateMapping?>(
            key, OperationLinksImageIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksImageIriTemplateMapping>;
  }

  // maps a json object with a list of OperationLinksImageIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksImageIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<OperationLinksImageIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key:
              OperationLinksImageIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksImageIriTemplateMapping[image=$image, operation=$operation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (image != null) r'image': image,
      if (operation != null) r'operation': operation,
    };
  }
}
