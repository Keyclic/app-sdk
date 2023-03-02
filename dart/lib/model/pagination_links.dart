//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory PaginationLinks.fromJson(Map<String, dynamic> json) {
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

  PaginationLink first;

  PaginationLink last;

  PaginationLink next;

  PaginationLink self;

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

  static List<PaginationLinks> listFromJson(List<dynamic> json) {
    return <PaginationLinks>[
      if (json is List)
        for (dynamic value in json) PaginationLinks.fromJson(value),
    ];
  }

  static Map<String, PaginationLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, PaginationLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PaginationLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PaginationLinks-objects as value to a dart map
  static Map<String, List<PaginationLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PaginationLinks>>{
      if (json is Map)
        for (final entry in json.entries)
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
