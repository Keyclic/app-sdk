//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PaginationLink {
  /// Returns a new [PaginationLink] instance.
  PaginationLink({
    this.href,
  });

  /// Returns a new [PaginationLink] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginationLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaginationLink(
      href: json[r'href'],
    );
  }

  String? href;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PaginationLink && other.href == href;
  }

  @override
  int get hashCode => (href == null ? 0 : href.hashCode);

  static List<PaginationLink> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PaginationLink>[];
    }

    return json.fold(<PaginationLink>[],
        (List<PaginationLink> previousValue, element) {
      final PaginationLink? object = PaginationLink.fromJson(element);
      if (object is PaginationLink) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PaginationLink> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PaginationLink>{};
    }

    return json.entries.fold(<String, PaginationLink>{},
        (Map<String, PaginationLink> previousValue, element) {
      final PaginationLink? object = PaginationLink.fromJson(element.value);
      if (object is PaginationLink) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PaginationLink-objects as value to a dart map
  static Map<String, List<PaginationLink>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PaginationLink>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PaginationLink>>(
          key, PaginationLink.listFromJson(value));
    });
  }

  @override
  String toString() => 'PaginationLink[href=$href]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
    };
  }
}
