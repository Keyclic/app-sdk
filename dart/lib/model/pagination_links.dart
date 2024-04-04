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
  static PaginationLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^first\.').hasMatch(key)))
        r'first': first?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^first\.'))) {
            previousValue.add(element.split(RegExp(r'^first\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^last\.').hasMatch(key)))
        r'last': last?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^last\.'))) {
            previousValue.add(element.split(RegExp(r'^last\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^next\.').hasMatch(key)))
        r'next': next?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^next\.'))) {
            previousValue.add(element.split(RegExp(r'^next\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
