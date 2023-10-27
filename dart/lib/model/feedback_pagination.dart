//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackPagination implements Pagination {
  /// Returns a new [FeedbackPagination] instance.
  FeedbackPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [FeedbackPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: FeedbackCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  FeedbackCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackPagination &&
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

  static List<FeedbackPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FeedbackPagination>[];
    }

    return json.fold(<FeedbackPagination>[],
        (List<FeedbackPagination> previousValue, element) {
      final FeedbackPagination? object = FeedbackPagination.fromJson(element);
      if (object is FeedbackPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackPagination>{};
    }

    return json.entries.fold(<String, FeedbackPagination>{},
        (Map<String, FeedbackPagination> previousValue, element) {
      final FeedbackPagination? object =
          FeedbackPagination.fromJson(element.value);
      if (object is FeedbackPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackPagination-objects as value to a dart map
  static Map<String, List<FeedbackPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackPagination>>(
          key, FeedbackPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
