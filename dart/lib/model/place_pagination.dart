//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlacePagination implements Pagination, PlacePaginationAllOf {
  /// Returns a new [PlacePagination] instance.
  PlacePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [PlacePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlacePagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlacePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: PlaceCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  PlaceCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePagination &&
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

  static List<PlacePagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlacePagination>[];
    }

    return json.fold(<PlacePagination>[],
        (List<PlacePagination> previousValue, element) {
      final PlacePagination? object = PlacePagination.fromJson(element);
      if (object is PlacePagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlacePagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlacePagination>{};
    }

    return json.entries.fold(<String, PlacePagination>{},
        (Map<String, PlacePagination> previousValue, element) {
      final PlacePagination? object = PlacePagination.fromJson(element.value);
      if (object is PlacePagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlacePagination-objects as value to a dart map
  static Map<String, List<PlacePagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlacePagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlacePagination>>(
          key, PlacePagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlacePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
