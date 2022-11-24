//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NotePagination implements Pagination, NotePaginationAllOf {
  /// Returns a new [NotePagination] instance.
  NotePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [NotePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NotePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NotePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: NoteCollection.fromJson(json[r'_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  NoteCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NotePagination &&
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

  static List<NotePagination> listFromJson(List<dynamic> json) {
    return <NotePagination>[
      if (json is List)
        for (dynamic value in json) NotePagination.fromJson(value),
    ];
  }

  static Map<String, NotePagination> mapFromJson(Map<String, dynamic> json) {
    return <String, NotePagination>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePagination.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NotePagination-objects as value to a dart map
  static Map<String, List<NotePagination>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NotePagination>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NotePagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'NotePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
