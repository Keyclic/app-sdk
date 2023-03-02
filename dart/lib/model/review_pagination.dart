//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReviewPagination implements Pagination, ReviewPaginationAllOf {
  /// Returns a new [ReviewPagination] instance.
  ReviewPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [ReviewPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReviewPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: ReviewCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  ReviewCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewPagination &&
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

  static List<ReviewPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReviewPagination>[];
    }

    return json.fold(<ReviewPagination>[],
        (List<ReviewPagination> previousValue, element) {
      final ReviewPagination? object = ReviewPagination.fromJson(element);
      if (object is ReviewPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewPagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewPagination>{};
    }

    return json.entries.fold(<String, ReviewPagination>{},
        (Map<String, ReviewPagination> previousValue, element) {
      final ReviewPagination? object = ReviewPagination.fromJson(element.value);
      if (object is ReviewPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewPagination-objects as value to a dart map
  static Map<String, List<ReviewPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewPagination>>(
          key, ReviewPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
