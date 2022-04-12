//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SectionPagination implements Pagination, SectionPaginationAllOf {
  /// Returns a new [SectionPagination] instance.
  SectionPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [SectionPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SectionPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: SectionCollection.fromJson(json[r'_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  SectionCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionPagination &&
        other.limit == limit &&
        other.page == page &&
        other.pages == pages &&
        other.total == total &&
        other.links == links &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (limit == null ? 0 : limit.hashCode) +
      (page == null ? 0 : page.hashCode) +
      (pages == null ? 0 : pages.hashCode) +
      (total == null ? 0 : total.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<SectionPagination> listFromJson(List<dynamic> json) {
    return <SectionPagination>[
      if (json is List)
        for (dynamic value in json) SectionPagination.fromJson(value),
    ];
  }

  static Map<String, SectionPagination> mapFromJson(Map<String, dynamic> json) {
    return <String, SectionPagination>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionPagination.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SectionPagination-objects as value to a dart map
  static Map<String, List<SectionPagination>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SectionPagination>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SectionPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'SectionPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (page != null) r'page': page,
      if (pages != null) r'pages': pages,
      if (total != null) r'total': total,
      if (links != null) r'_links': links,
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
