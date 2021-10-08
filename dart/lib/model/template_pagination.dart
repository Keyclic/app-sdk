part of keyclic_sdk_api.api;

class TemplatePagination extends Pagination {
  TemplatePagination({
    this.limit,
    this.page,
    this.pages,
    this.total,
    this.links,
    this.embedded,
  });

  factory TemplatePagination.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TemplatePagination(
      limit: json['limit'],
      page: json['page'],
      pages: json['pages'],
      total: json['total'],
      links: PaginationLinks.fromJson(json['_links']),
      embedded: TemplateCollection.fromJson(json['_embedded']),
    );
  }

  int limit;

  int page;

  int pages;

  int total;

  PaginationLinks links;

  TemplateCollection embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TemplatePagination &&
        runtimeType == other.runtimeType &&
        limit == other.limit &&
        page == other.page &&
        pages == other.pages &&
        total == other.total &&
        links == other.links &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= limit?.hashCode ?? 0;
    hashCode ^= page?.hashCode ?? 0;
    hashCode ^= pages?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<TemplatePagination> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TemplatePagination.fromJson(value))
            ?.toList() ??
        <TemplatePagination>[];
  }

  static Map<String, TemplatePagination> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, TemplatePagination>((String key, dynamic value) {
          return MapEntry(key, TemplatePagination.fromJson(value));
        }) ??
        <String, TemplatePagination>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (limit != null) 'limit': limit,
      if (page != null) 'page': page,
      if (pages != null) 'pages': pages,
      if (total != null) 'total': total,
      if (links != null) '_links': links.toJson(),
      if (embedded != null) '_embedded': embedded.toJson(),
    };
  }

  @override
  String toString() {
    return 'TemplatePagination[limit=$limit, page=$page, pages=$pages, total=$total, links=$links, embedded=$embedded, ]';
  }
}
