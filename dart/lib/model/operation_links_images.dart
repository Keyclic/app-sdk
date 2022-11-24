//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksImages {
  /// Returns a new [OperationLinksImages] instance.
  OperationLinksImages({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksImages] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImages(
      href: json[r'href'],
      iriTemplate:
          OperationLinksImagesIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the images associated to the given operation.
  String href;

  OperationLinksImagesIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImages &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksImages> listFromJson(List<dynamic> json) {
    return <OperationLinksImages>[
      if (json is List)
        for (dynamic value in json) OperationLinksImages.fromJson(value),
    ];
  }

  static Map<String, OperationLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksImages>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksImages.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksImages-objects as value to a dart map
  static Map<String, List<OperationLinksImages>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksImages>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksImages.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksImages[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
