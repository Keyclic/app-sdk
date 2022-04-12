//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServicePagination implements Pagination, ServicePaginationAllOf {
  /// Returns a new [ServicePagination] instance.
  ServicePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ServicePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServicePagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServicePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ServiceCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  ServiceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServicePagination &&
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

  static List<ServicePagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServicePagination>[];
    }
    return json
        .map((value) {
          return ServicePagination.fromJson(value);
        })
        .whereType<ServicePagination>()
        .toList();
  }

  static Map<String, ServicePagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServicePagination>{};
    }

    final map = json.map((key, value) => MapEntry<String, ServicePagination?>(
        key, ServicePagination.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ServicePagination>;
  }

  // maps a json object with a list of ServicePagination-objects as value to a dart map
  static Map<String, List<ServicePagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ServicePagination>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ServicePagination.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ServicePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
