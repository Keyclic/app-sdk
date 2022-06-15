//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberCollection {
  /// Returns a new [MemberCollection] instance.
  MemberCollection({
    this.items = const [],
  });

  /// Returns a new [MemberCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
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

  static List<MemberCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberCollection>[];
    }
    return json
        .map((value) {
          return MemberCollection.fromJson(value);
        })
        .whereType<MemberCollection>()
        .toList();
  }

  static Map<String, MemberCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberCollection>{};
    }

    final map = json.map((key, value) => MapEntry<String, MemberCollection?>(
        key, MemberCollection.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberCollection>;
  }

  // maps a json object with a list of MemberCollection-objects as value to a dart map
  static Map<String, List<MemberCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberCollection>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
