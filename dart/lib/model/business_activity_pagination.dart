//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityPagination
    implements Pagination, BusinessActivityPaginationAllOf {
  /// Returns a new [BusinessActivityPagination] instance.
  BusinessActivityPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [BusinessActivityPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: BusinessActivityCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  BusinessActivityCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityPagination &&
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

  static List<BusinessActivityPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BusinessActivityPagination>[];
    }
    return json
        .map((value) {
          return BusinessActivityPagination.fromJson(value);
        })
        .whereType<BusinessActivityPagination>()
        .toList();
  }

  static Map<String, BusinessActivityPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityPagination>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, BusinessActivityPagination?>(
            key, BusinessActivityPagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, BusinessActivityPagination>;
  }

  // maps a json object with a list of BusinessActivityPagination-objects as value to a dart map
  static Map<String, List<BusinessActivityPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<BusinessActivityPagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: BusinessActivityPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'BusinessActivityPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
