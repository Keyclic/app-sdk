//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PlacePagination implements Pagination, PlacePaginationAllOf {
  /// Returns a new [PlacePagination] instance.
  PlacePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [PlacePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PlacePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlacePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: PlaceCollection.fromJson(json[r'_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  PlaceCollection embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePagination &&
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

  static List<PlacePagination> listFromJson(List<dynamic> json) {
    return <PlacePagination>[
      if (json is List)
        for (dynamic value in json) PlacePagination.fromJson(value),
    ];
  }

  static Map<String, PlacePagination> mapFromJson(Map<String, dynamic> json) {
    return <String, PlacePagination>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlacePagination.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PlacePagination-objects as value to a dart map
  static Map<String, List<PlacePagination>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PlacePagination>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PlacePagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PlacePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
