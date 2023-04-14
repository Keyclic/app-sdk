//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BookmarkPagination implements Pagination, BookmarkPaginationAllOf {
  /// Returns a new [BookmarkPagination] instance.
  BookmarkPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [BookmarkPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BookmarkPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BookmarkPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: BookmarkCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  BookmarkCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkPagination &&
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

  static List<BookmarkPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BookmarkPagination>[];
    }

    return json.fold(<BookmarkPagination>[],
        (List<BookmarkPagination> previousValue, element) {
      final BookmarkPagination? object = BookmarkPagination.fromJson(element);
      if (object is BookmarkPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BookmarkPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BookmarkPagination>{};
    }

    return json.entries.fold(<String, BookmarkPagination>{},
        (Map<String, BookmarkPagination> previousValue, element) {
      final BookmarkPagination? object =
          BookmarkPagination.fromJson(element.value);
      if (object is BookmarkPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BookmarkPagination-objects as value to a dart map
  static Map<String, List<BookmarkPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BookmarkPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BookmarkPagination>>(
          key, BookmarkPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BookmarkPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
