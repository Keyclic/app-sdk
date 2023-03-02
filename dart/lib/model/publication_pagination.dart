//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PublicationPagination implements Pagination, PublicationPaginationAllOf {
  /// Returns a new [PublicationPagination] instance.
  PublicationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [PublicationPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PublicationPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: PublicationCollection.fromJson(json[r'_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  PublicationCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationPagination &&
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

  static List<PublicationPagination> listFromJson(List<dynamic> json) {
    return <PublicationPagination>[
      if (json is List)
        for (dynamic value in json) PublicationPagination.fromJson(value),
    ];
  }

  static Map<String, PublicationPagination> mapFromJson(
      Map<String, dynamic> json) {
    return <String, PublicationPagination>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationPagination.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PublicationPagination-objects as value to a dart map
  static Map<String, List<PublicationPagination>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PublicationPagination>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PublicationPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PublicationPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
