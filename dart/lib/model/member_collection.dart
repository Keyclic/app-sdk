//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberCollection {
  /// Returns a new [MemberCollection] instance.
  MemberCollection({
    this.items,
  });

  /// Returns a new [MemberCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberCollection? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberCollection(
      items: Member.listFromJson(json[r'items']),
    );
  }

  List<Member>? items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<MemberCollection> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberCollection>[];
    }

    return json.fold(<MemberCollection>[],
        (List<MemberCollection> previousValue, element) {
      final MemberCollection? object = MemberCollection.fromJson(element);
      if (object is MemberCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberCollection>{};
    }

    return json.entries.fold(<String, MemberCollection>{},
        (Map<String, MemberCollection> previousValue, element) {
      final MemberCollection? object = MemberCollection.fromJson(element.value);
      if (object is MemberCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberCollection-objects as value to a dart map
  static Map<String, List<MemberCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberCollection>>(
          key, MemberCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberCollection[items=$items]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'items')) r'items': items,
    };
  }
}
