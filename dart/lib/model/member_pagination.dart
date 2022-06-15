//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPagination implements Pagination, MemberPaginationAllOf {
  /// Returns a new [MemberPagination] instance.
  MemberPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [MemberPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: MemberCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  MemberCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPagination &&
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

  static List<MemberPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberPagination>[];
    }
    return json
        .map((value) {
          return MemberPagination.fromJson(value);
        })
        .whereType<MemberPagination>()
        .toList();
  }

  static Map<String, MemberPagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPagination>{};
    }

    final map = json.map((key, value) => MapEntry<String, MemberPagination?>(
        key, MemberPagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberPagination>;
  }

  // maps a json object with a list of MemberPagination-objects as value to a dart map
  static Map<String, List<MemberPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberPagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberPagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
