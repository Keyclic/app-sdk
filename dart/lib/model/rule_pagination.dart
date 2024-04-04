//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RulePagination implements Pagination {
  /// Returns a new [RulePagination] instance.
  RulePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [RulePagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RulePagination? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RulePagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: RuleCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  RuleCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePagination &&
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

  static List<RulePagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RulePagination>[];
    }

    return json.fold(<RulePagination>[],
        (List<RulePagination> previousValue, element) {
      final RulePagination? object = RulePagination.fromJson(element);
      if (object is RulePagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RulePagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RulePagination>{};
    }

    return json.entries.fold(<String, RulePagination>{},
        (Map<String, RulePagination> previousValue, element) {
      final RulePagination? object = RulePagination.fromJson(element.value);
      if (object is RulePagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RulePagination-objects as value to a dart map
  static Map<String, List<RulePagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RulePagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RulePagination>>(
          key, RulePagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RulePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'limit')) r'limit': limit,
      if (keys == null || keys.contains(r'page')) r'page': page,
      if (keys == null || keys.contains(r'pages')) r'pages': pages,
      if (keys == null || keys.contains(r'total')) r'total': total,
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
