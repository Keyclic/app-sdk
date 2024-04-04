//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class GetAssetTypeCollection200ResponseLinks {
  /// Returns a new [GetAssetTypeCollection200ResponseLinks] instance.
  GetAssetTypeCollection200ResponseLinks({
    this.self,
    this.first,
    this.last,
    this.next,
    this.previous,
    this.item,
  });

  /// Returns a new [GetAssetTypeCollection200ResponseLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GetAssetTypeCollection200ResponseLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return GetAssetTypeCollection200ResponseLinks(
      self: GetAssetTypeCollection200ResponseLinksSelf.fromJson(json[r'self']),
      first:
          GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'first']),
      last: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'last']),
      next: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'next']),
      previous: GetAssetTypeCollection200ResponseLinksFirst.fromJson(
          json[r'previous']),
      item: GetAssetTypeCollection200ResponseLinksFirst.listFromJson(
          json[r'item']),
    );
  }

  GetAssetTypeCollection200ResponseLinksSelf? self;

  GetAssetTypeCollection200ResponseLinksFirst? first;

  GetAssetTypeCollection200ResponseLinksFirst? last;

  GetAssetTypeCollection200ResponseLinksFirst? next;

  GetAssetTypeCollection200ResponseLinksFirst? previous;

  List<GetAssetTypeCollection200ResponseLinksFirst>? item;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GetAssetTypeCollection200ResponseLinks &&
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

  static List<GetAssetTypeCollection200ResponseLinks> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <GetAssetTypeCollection200ResponseLinks>[];
    }

    return json.fold(<GetAssetTypeCollection200ResponseLinks>[],
        (List<GetAssetTypeCollection200ResponseLinks> previousValue, element) {
      final GetAssetTypeCollection200ResponseLinks? object =
          GetAssetTypeCollection200ResponseLinks.fromJson(element);
      if (object is GetAssetTypeCollection200ResponseLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, GetAssetTypeCollection200ResponseLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, GetAssetTypeCollection200ResponseLinks>{};
    }

    return json.entries.fold(<String, GetAssetTypeCollection200ResponseLinks>{},
        (Map<String, GetAssetTypeCollection200ResponseLinks> previousValue,
            element) {
      final GetAssetTypeCollection200ResponseLinks? object =
          GetAssetTypeCollection200ResponseLinks.fromJson(element.value);
      if (object is GetAssetTypeCollection200ResponseLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of GetAssetTypeCollection200ResponseLinks-objects as value to a dart map
  static Map<String, List<GetAssetTypeCollection200ResponseLinks>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<GetAssetTypeCollection200ResponseLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<GetAssetTypeCollection200ResponseLinks>>(
          key, GetAssetTypeCollection200ResponseLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'GetAssetTypeCollection200ResponseLinks[self=$self, first=$first, last=$last, next=$next, previous=$previous, item=$item]';

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
      if (keys == null ||
          keys.any((key) => RegExp(r'^previous\.').hasMatch(key)))
        r'previous': previous?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^previous\.'))) {
            previousValue.add(element.split(RegExp(r'^previous\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'item')) r'item': item,
    };
  }
}
