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
      first: PaginationLink.fromJson(json[r'first']),
      last: PaginationLink.fromJson(json[r'last']),
      next: PaginationLink.fromJson(json[r'next']),
      self: PaginationLink.fromJson(json[r'self']),
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

  static List<PaginationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PaginationLinks>[];
    }
    return json
        .map((value) {
          return PaginationLinks.fromJson(value);
        })
        .whereType<PaginationLinks>()
        .toList();
  }

  static Map<String, PaginationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PaginationLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, PaginationLinks?>(
        key, PaginationLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PaginationLinks>;
  }

  // maps a json object with a list of PaginationLinks-objects as value to a dart map
  static Map<String, List<PaginationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PaginationLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PaginationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PaginationLinks[first=$first, last=$last, next=$next, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (first != null) r'first': first,
      if (last != null) r'last': last,
      if (next != null) r'next': next,
      if (self != null) r'self': self,
    };
  }
}
