//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PaginationLink {
  /// Returns a new [PaginationLink] instance.
  PaginationLink({
    this.href,
  });

  /// Returns a new [PaginationLink] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PaginationLink.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PaginationLink(
      href: json[r'href'],
    );
  }

  String href;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PaginationLink && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<PaginationLink> listFromJson(List<dynamic> json) {
    return <PaginationLink>[
      if (json is List)
        for (dynamic value in json) PaginationLink.fromJson(value),
    ];
  }

  static Map<String, PaginationLink> mapFromJson(Map<String, dynamic> json) {
    return <String, PaginationLink>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PaginationLink.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PaginationLink-objects as value to a dart map
  static Map<String, List<PaginationLink>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PaginationLink>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PaginationLink.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PaginationLink[href=$href]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
    };
  }
}
