//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionPagination implements Pagination, SectionPaginationAllOf {
  /// Returns a new [SectionPagination] instance.
  SectionPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [SectionPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: SectionCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  SectionCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionPagination &&
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

  static List<SectionPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionPagination>[];
    }

    return json.fold(<SectionPagination>[],
        (List<SectionPagination> previousValue, element) {
      final SectionPagination? object = SectionPagination.fromJson(element);
      if (object is SectionPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionPagination>{};
    }

    return json.entries.fold(<String, SectionPagination>{},
        (Map<String, SectionPagination> previousValue, element) {
      final SectionPagination? object =
          SectionPagination.fromJson(element.value);
      if (object is SectionPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionPagination-objects as value to a dart map
  static Map<String, List<SectionPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionPagination>>(
          key, SectionPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SectionPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
