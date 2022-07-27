part of keyclic_sdk_api.api;

class NoteLinksSelf {
  NoteLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory NoteLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelf(
      href: json['href'],
      iriTemplate: NoteLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given note. */
  String href;

  NoteLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelf &&
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

  static List<NoteLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => NoteLinksSelf.fromJson(value))
            ?.toList() ??
        <NoteLinksSelf>[];
  }

  static Map<String, NoteLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, NoteLinksSelf>((String key, dynamic value) {
          return MapEntry(key, NoteLinksSelf.fromJson(value));
        }) ??
        <String, NoteLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'NoteLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
