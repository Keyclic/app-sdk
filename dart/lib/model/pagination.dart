//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Pagination {
  /// Returns a new [Pagination] instance.
  Pagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
  });

  /// Returns a new [Pagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Pagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Pagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Pagination &&
        other.limit == limit &&
        other.page == page &&
        other.pages == pages &&
        other.total == total &&
        other.links == links;
  }

  @override
  int get hashCode =>
      (limit == null ? 0 : limit.hashCode) +
      (page == null ? 0 : page.hashCode) +
      (pages == null ? 0 : pages.hashCode) +
      (total == null ? 0 : total.hashCode) +
      (links == null ? 0 : links.hashCode);

  static List<Pagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Pagination>[];
    }

    return json.fold(<Pagination>[], (List<Pagination> previousValue, element) {
      final Pagination? object = Pagination.fromJson(element);
      if (object is Pagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Pagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Pagination>{};
    }

    return json.entries.fold(<String, Pagination>{},
        (Map<String, Pagination> previousValue, element) {
      final Pagination? object = Pagination.fromJson(element.value);
      if (object is Pagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Pagination-objects as value to a dart map
  static Map<String, List<Pagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Pagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Pagination>>(
          key, Pagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Pagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (limit != null) r'limit': limit,
      if (page != null) r'page': page,
      if (pages != null) r'pages': pages,
      if (total != null) r'total': total,
      if (links != null) r'_links': links,
    };
  }
}
