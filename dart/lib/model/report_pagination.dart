//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportPagination implements Pagination, ReportPaginationAllOf {
  /// Returns a new [ReportPagination] instance.
  ReportPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ReportPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ReportCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  ReportCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportPagination &&
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

  static List<ReportPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportPagination>[];
    }

    return json.fold(<ReportPagination>[],
        (List<ReportPagination> previousValue, element) {
      final ReportPagination? object = ReportPagination.fromJson(element);
      if (object is ReportPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportPagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportPagination>{};
    }

    return json.entries.fold(<String, ReportPagination>{},
        (Map<String, ReportPagination> previousValue, element) {
      final ReportPagination? object = ReportPagination.fromJson(element.value);
      if (object is ReportPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportPagination-objects as value to a dart map
  static Map<String, List<ReportPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportPagination>>(
          key, ReportPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
