//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PaginationLinks {
  /// Returns a new [PaginationLinks] instance.
  PaginationLinks({
    this.first,
    this.last,
    this.next,
    this.self,
  });

  /// Returns a new [PaginationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PaginationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaginationLinks(
      first: json[r'first'] is! Map
          ? null
          : PaginationLink.fromJson(json[r'first']),
      last:
          json[r'last'] is! Map ? null : PaginationLink.fromJson(json[r'last']),
      next:
          json[r'next'] is! Map ? null : PaginationLink.fromJson(json[r'next']),
      self:
          json[r'self'] is! Map ? null : PaginationLink.fromJson(json[r'self']),
    );
  }

  PaginationLink? first;

  PaginationLink? last;

  PaginationLink? next;

  PaginationLink? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PaginationLinks &&
        other.first == first &&
        other.last == last &&
        other.next == next &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (first == null ? 0 : first.hashCode) +
      (last == null ? 0 : last.hashCode) +
      (next == null ? 0 : next.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<PaginationLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PaginationLinks>[];
    }

    return json.fold(<PaginationLinks>[],
        (List<PaginationLinks> previousValue, element) {
      final PaginationLinks? object = PaginationLinks.fromJson(element);
      if (object is PaginationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PaginationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PaginationLinks>{};
    }

    return json.entries.fold(<String, PaginationLinks>{},
        (Map<String, PaginationLinks> previousValue, element) {
      final PaginationLinks? object = PaginationLinks.fromJson(element.value);
      if (object is PaginationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PaginationLinks-objects as value to a dart map
  static Map<String, List<PaginationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PaginationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PaginationLinks>>(
          key, PaginationLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PaginationLinks[first=$first, last=$last, next=$next, self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && first != null) ||
          (keys?.contains(r'first') ?? false))
        r'first': first?.toJson(),
      if ((keys == null && last != null) || (keys?.contains(r'last') ?? false))
        r'last': last?.toJson(),
      if ((keys == null && next != null) || (keys?.contains(r'next') ?? false))
        r'next': next?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
