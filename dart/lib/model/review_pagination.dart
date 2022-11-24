//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewPagination implements Pagination, ReviewPaginationAllOf {
  /// Returns a new [ReviewPagination] instance.
  ReviewPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ReviewPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ReviewCollection.fromJson(json[r'_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  ReviewCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewPagination &&
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

  static List<ReviewPagination> listFromJson(List<dynamic> json) {
    return <ReviewPagination>[
      if (json is List)
        for (dynamic value in json) ReviewPagination.fromJson(value),
    ];
  }

  static Map<String, ReviewPagination> mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewPagination>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewPagination.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewPagination-objects as value to a dart map
  static Map<String, List<ReviewPagination>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewPagination>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
