//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypes200ResponseLinks {
  /// Returns a new [GetAssetTypes200ResponseLinks] instance.
  GetAssetTypes200ResponseLinks({
    this.self,
    this.first,
    this.last,
    this.next,
    this.previous,
    this.item = const [],
  });

  /// Returns a new [GetAssetTypes200ResponseLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypes200ResponseLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GetAssetTypes200ResponseLinks(
      self: GetAssetTypes200ResponseLinksSelf.fromJson(json[r'self']),
      first: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'first']),
      last: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'last']),
      next: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'next']),
      previous: GetAssetTypes200ResponseLinksFirst.fromJson(json[r'previous']),
      item: GetAssetTypes200ResponseLinksFirst.listFromJson(json[r'item']),
    );
  }

  GetAssetTypes200ResponseLinksSelf? self;

  GetAssetTypes200ResponseLinksFirst? first;

  GetAssetTypes200ResponseLinksFirst? last;

  GetAssetTypes200ResponseLinksFirst? next;

  GetAssetTypes200ResponseLinksFirst? previous;

  List<GetAssetTypes200ResponseLinksFirst>? item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAssetTypes200ResponseLinks &&
        other.self == self &&
        other.first == first &&
        other.last == last &&
        other.next == next &&
        other.previous == previous &&
        DeepCollectionEquality.unordered().equals(item, other.item);
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (first == null ? 0 : first.hashCode) +
      (last == null ? 0 : last.hashCode) +
      (next == null ? 0 : next.hashCode) +
      (previous == null ? 0 : previous.hashCode) +
      (item == null ? 0 : item.hashCode);

  static List<GetAssetTypes200ResponseLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypes200ResponseLinks>[];
    }

    return json.fold(<GetAssetTypes200ResponseLinks>[],
        (List<GetAssetTypes200ResponseLinks> previousValue, element) {
      final GetAssetTypes200ResponseLinks? object =
          GetAssetTypes200ResponseLinks.fromJson(element);
      if (object is GetAssetTypes200ResponseLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypes200ResponseLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypes200ResponseLinks>{};
    }

    return json.entries.fold(<String, GetAssetTypes200ResponseLinks>{},
        (Map<String, GetAssetTypes200ResponseLinks> previousValue, element) {
      final GetAssetTypes200ResponseLinks? object =
          GetAssetTypes200ResponseLinks.fromJson(element.value);
      if (object is GetAssetTypes200ResponseLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypes200ResponseLinks-objects as value to a dart map
  static Map<String, List<GetAssetTypes200ResponseLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypes200ResponseLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypes200ResponseLinks>>(
          key, GetAssetTypes200ResponseLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAssetTypes200ResponseLinks[self=$self, first=$first, last=$last, next=$next, previous=$previous, item=$item]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
      if (first != null) r'first': first,
      if (last != null) r'last': last,
      if (next != null) r'next': next,
      if (previous != null) r'previous': previous,
      if (item != null) r'item': item,
    };
  }
}
