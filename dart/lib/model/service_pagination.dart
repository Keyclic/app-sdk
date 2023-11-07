//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServicePagination implements Pagination {
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
      links: json[r'_links'] is! Map
          ? null
          : PaginationLinks.fromJson(json[r'_links']),
      embedded: json[r'_embedded'] is! Map
          ? null
          : ServiceCollection.fromJson(json[r'_embedded']),
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

    return json.fold(<ServicePagination>[],
        (List<ServicePagination> previousValue, element) {
      final ServicePagination? object = ServicePagination.fromJson(element);
      if (object is ServicePagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServicePagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServicePagination>{};
    }

    return json.entries.fold(<String, ServicePagination>{},
        (Map<String, ServicePagination> previousValue, element) {
      final ServicePagination? object =
          ServicePagination.fromJson(element.value);
      if (object is ServicePagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServicePagination-objects as value to a dart map
  static Map<String, List<ServicePagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServicePagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServicePagination>>(
          key, ServicePagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServicePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && limit != null) ||
          (keys?.contains(r'limit') ?? false))
        r'limit': limit,
      if ((keys == null && page != null) || (keys?.contains(r'page') ?? false))
        r'page': page,
      if ((keys == null && pages != null) ||
          (keys?.contains(r'pages') ?? false))
        r'pages': pages,
      if ((keys == null && total != null) ||
          (keys?.contains(r'total') ?? false))
        r'total': total,
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
    };
  }
}
