//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerPagination implements Pagination, SignerPaginationAllOf {
  /// Returns a new [SignerPagination] instance.
  SignerPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [SignerPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: SignerCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  SignerCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerPagination &&
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

  static List<SignerPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerPagination>[];
    }

    return json.fold(<SignerPagination>[],
        (List<SignerPagination> previousValue, element) {
      final SignerPagination? object = SignerPagination.fromJson(element);
      if (object is SignerPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerPagination> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerPagination>{};
    }

    return json.entries.fold(<String, SignerPagination>{},
        (Map<String, SignerPagination> previousValue, element) {
      final SignerPagination? object = SignerPagination.fromJson(element.value);
      if (object is SignerPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerPagination-objects as value to a dart map
  static Map<String, List<SignerPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerPagination>>(
          key, SignerPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SignerPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
