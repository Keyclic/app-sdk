//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentPagination implements Pagination, DocumentPaginationAllOf {
  /// Returns a new [DocumentPagination] instance.
  DocumentPagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  /// Returns a new [DocumentPagination] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentPagination? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentPagination(
      limit: json[r'limit'],
      page: json[r'page'],
      pages: json[r'pages'],
      total: json[r'total'],
      links: PaginationLinks.fromJson(json[r'_links']),
      embedded: DocumentCollection.fromJson(json[r'_embedded']),
    );
  }

  int? limit;

  int? page;

  int? pages;

  int? total;

  PaginationLinks? links;

  DocumentCollection? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentPagination &&
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

  static List<DocumentPagination> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentPagination>[];
    }

    return json.fold(<DocumentPagination>[],
        (List<DocumentPagination> previousValue, element) {
      final DocumentPagination? object = DocumentPagination.fromJson(element);
      if (object is DocumentPagination) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentPagination> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentPagination>{};
    }

    return json.entries.fold(<String, DocumentPagination>{},
        (Map<String, DocumentPagination> previousValue, element) {
      final DocumentPagination? object =
          DocumentPagination.fromJson(element.value);
      if (object is DocumentPagination) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentPagination-objects as value to a dart map
  static Map<String, List<DocumentPagination>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentPagination>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentPagination>>(
          key, DocumentPagination.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentPagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded]';

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
