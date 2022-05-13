part of keyclic_sdk_api.api;

class ProcedureLinksSelf {
  ProcedureLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ProcedureLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ProcedureLinksSelf(
      href: json['href'],
      iriTemplate: ProcedureLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given procedure. */
  String href;

  ProcedureLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureLinksSelf &&
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

  static List<ProcedureLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ProcedureLinksSelf.fromJson(value))
            ?.toList() ??
        <ProcedureLinksSelf>[];
  }

  static Map<String, ProcedureLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ProcedureLinksSelf>((String key, dynamic value) {
          return MapEntry(key, ProcedureLinksSelf.fromJson(value));
        }) ??
        <String, ProcedureLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ProcedureLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
