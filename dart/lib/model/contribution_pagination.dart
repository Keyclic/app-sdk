//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ContributionPagination
    implements Pagination, ContributionPaginationAllOf {
  /// Returns a new [ContributionPagination] instance.
  ContributionPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ContributionPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContributionPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ContributionPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ContributionCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  ContributionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionPagination &&
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

  static List<ContributionPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContributionPagination>[];
    }
    return json
        .map((value) {
          return ContributionPagination.fromJson(value);
        })
        .whereType<ContributionPagination>()
        .toList();
  }

  static Map<String, ContributionPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContributionPagination>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ContributionPagination?>(
            key, ContributionPagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ContributionPagination>;
  }

  // maps a json object with a list of ContributionPagination-objects as value to a dart map
  static Map<String, List<ContributionPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ContributionPagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ContributionPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ContributionPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
