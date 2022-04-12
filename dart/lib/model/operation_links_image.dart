//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImage {
  /// Returns a new [OperationLinksImage] instance.
  OperationLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImage(
      href: json[r'href'],
      iriTemplate:
          OperationLinksImageIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the image associated to the given operation.
  String? href;

  OperationLinksImageIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImage &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksImage> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImage>[];
    }
    return json
        .map((value) {
          return OperationLinksImage.fromJson(value);
        })
        .whereType<OperationLinksImage>()
        .toList();
  }

  static Map<String, OperationLinksImage> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImage>{};
    }

    final map = json.map((key, value) => MapEntry<String, OperationLinksImage?>(
        key, OperationLinksImage.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, OperationLinksImage>;
  }

  // maps a json object with a list of OperationLinksImage-objects as value to a dart map
  static Map<String, List<OperationLinksImage>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<OperationLinksImage>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: OperationLinksImage.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksImage[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
