//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BinaryPagination implements Pagination, BinaryPaginationAllOf {
  /// Returns a new [BinaryPagination] instance.
  BinaryPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [BinaryPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BinaryPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BinaryPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: BinaryCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  BinaryCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BinaryPagination &&
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

  static List<BinaryPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BinaryPagination>[];
    }
    return json
        .map((value) {
          return BinaryPagination.fromJson(value);
        })
        .whereType<BinaryPagination>()
        .toList();
  }

  static Map<String, BinaryPagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BinaryPagination>{};
    }

    final map = json.map((key, value) => MapEntry<String, BinaryPagination?>(
        key, BinaryPagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BinaryPagination>;
  }

  // maps a json object with a list of BinaryPagination-objects as value to a dart map
  static Map<String, List<BinaryPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BinaryPagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BinaryPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BinaryPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
