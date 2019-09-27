part of keyclic_sdk_api.api;

class OperationLinksImage {
  OperationLinksImage({
    this.href,
    this.iriTemplate,
  });

  OperationLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OperationLinksImageIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the image associated to the given operation. */
  String href;

  OperationLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImage &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksImage> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksImage>[]
        : json
            .map((dynamic value) => OperationLinksImage.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImage.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
