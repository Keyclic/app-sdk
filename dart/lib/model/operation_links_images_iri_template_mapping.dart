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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImagesIriTemplateMapping>[];
    }

    return json.fold(<OperationLinksImagesIriTemplateMapping>[],
        (List<OperationLinksImagesIriTemplateMapping> previousValue, element) {
      final OperationLinksImagesIriTemplateMapping? object =
          OperationLinksImagesIriTemplateMapping.fromJson(element);
      if (object is OperationLinksImagesIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksImagesIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImagesIriTemplateMapping>{};
    }

    return json.entries.fold(<String, OperationLinksImagesIriTemplateMapping>{},
        (Map<String, OperationLinksImagesIriTemplateMapping> previousValue,
            element) {
      final OperationLinksImagesIriTemplateMapping? object =
          OperationLinksImagesIriTemplateMapping.fromJson(element.value);
      if (object is OperationLinksImagesIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksImagesIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksImagesIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksImagesIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksImagesIriTemplateMapping>>(
          key, OperationLinksImagesIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksImagesIriTemplateMapping[operation=$operation, image=$image]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && operation != null) ||
          (keys?.contains(r'operation') ?? false))
        r'operation': operation,
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image,
    };
  }
}
