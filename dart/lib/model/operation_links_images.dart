//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksImages {
  /// Returns a new [OperationLinksImages] instance.
  OperationLinksImages({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksImages] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksImages? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinksImages(
      href: json[r'href'],
      iriTemplate:
          OperationLinksImagesIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the images associated to the given operation.
  String? href;

  OperationLinksImagesIriTemplate? iriTemplate;

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

  static List<OperationLinksImages> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksImages>[];
    }

    return json.fold(<OperationLinksImages>[],
        (List<OperationLinksImages> previousValue, element) {
      final OperationLinksImages? object =
          OperationLinksImages.fromJson(element);
      if (object is OperationLinksImages) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksImages> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksImages>{};
    }

    return json.entries.fold(<String, OperationLinksImages>{},
        (Map<String, OperationLinksImages> previousValue, element) {
      final OperationLinksImages? object =
          OperationLinksImages.fromJson(element.value);
      if (object is OperationLinksImages) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksImages-objects as value to a dart map
  static Map<String, List<OperationLinksImages>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksImages>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksImages>>(
          key, OperationLinksImages.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksImages[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
