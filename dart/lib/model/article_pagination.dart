//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ArticlePagination implements Pagination, ArticlePaginationAllOf {
  /// Returns a new [ArticlePagination] instance.
  ArticlePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ArticlePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArticlePagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ArticlePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ArticleCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  ArticleCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticlePagination &&
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

  static List<ArticlePagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ArticlePagination>[];
    }

    return json.fold(<ArticlePagination>[],
        (List<ArticlePagination> previousValue, element) {
      final ArticlePagination? object = ArticlePagination.fromJson(element);
      if (object is ArticlePagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArticlePagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArticlePagination>{};
    }

    return json.entries.fold(<String, ArticlePagination>{},
        (Map<String, ArticlePagination> previousValue, element) {
      final ArticlePagination? object =
          ArticlePagination.fromJson(element.value);
      if (object is ArticlePagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArticlePagination-objects as value to a dart map
  static Map<String, List<ArticlePagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArticlePagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArticlePagination>>(
          key, ArticlePagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ArticlePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
