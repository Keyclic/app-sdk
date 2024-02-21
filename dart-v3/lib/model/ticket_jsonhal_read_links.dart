//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalReadLinks {
  /// Returns a new [TicketJsonhalReadLinks] instance.
  TicketJsonhalReadLinks({
    this.self,
    this.category,
  });

  /// Returns a new [TicketJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalReadLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TicketJsonhalReadLinks(
      self: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'self']),
      category: GetAssetTypeCollection200ResponseLinksFirst.fromJson(
          json[r'category']),
    );
  }

  GetAssetTypeCollection200ResponseLinksFirst? self;

  GetAssetTypeCollection200ResponseLinksFirst? category;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalReadLinks &&
        other.self == self &&
        other.category == category;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (category == null ? 0 : category.hashCode);

  static List<TicketJsonhalReadLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TicketJsonhalReadLinks>[];
    }

    return json.fold(<TicketJsonhalReadLinks>[],
        (List<TicketJsonhalReadLinks> previousValue, element) {
      final TicketJsonhalReadLinks? object =
          TicketJsonhalReadLinks.fromJson(element);
      if (object is TicketJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, TicketJsonhalReadLinks>{},
        (Map<String, TicketJsonhalReadLinks> previousValue, element) {
      final TicketJsonhalReadLinks? object =
          TicketJsonhalReadLinks.fromJson(element.value);
      if (object is TicketJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<TicketJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsonhalReadLinks>>(
          key, TicketJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'TicketJsonhalReadLinks[self=$self, category=$category]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^category\.').hasMatch(key)))
        r'category': category?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^category\.'))) {
            previousValue.add(element.split(RegExp(r'^category\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
