//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksImage {
  /// Returns a new [OperationLinksImage] instance.
  OperationLinksImage({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksImage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksImage.fromJson(Map<String, dynamic> json) {
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
  String href;

  OperationLinksImageIriTemplate iriTemplate;

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

  static List<OperationLinksImage> listFromJson(List<dynamic> json) {
    return <OperationLinksImage>[
      if (json is List)
        for (dynamic value in json) OperationLinksImage.fromJson(value),
    ];
  }

  static Map<String, OperationLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksImage>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksImage.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksImage-objects as value to a dart map
  static Map<String, List<OperationLinksImage>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksImage>>{
      if (json is Map)
        for (final entry in json.entries)
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
