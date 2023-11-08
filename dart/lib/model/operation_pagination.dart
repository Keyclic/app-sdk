//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationPagination implements Pagination {
  /// Returns a new [OperationPagination] instance.
  OperationPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [OperationPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: json[r'_links'] is! Map
          ? null
          : PaginationLinks.fromJson(json[r'_links']),
      embedded: json[r'_embedded'] is! Map
          ? null
          : OperationCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  OperationCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPagination &&
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

  static List<OperationPagination> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationPagination>[];
    }

    return json.fold(<OperationPagination>[],
        (List<OperationPagination> previousValue, element) {
      final OperationPagination? object = OperationPagination.fromJson(element);
      if (object is OperationPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationPagination>{};
    }

    return json.entries.fold(<String, OperationPagination>{},
        (Map<String, OperationPagination> previousValue, element) {
      final OperationPagination? object =
          OperationPagination.fromJson(element.value);
      if (object is OperationPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationPagination-objects as value to a dart map
  static Map<String, List<OperationPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationPagination>>(
          key, OperationPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
