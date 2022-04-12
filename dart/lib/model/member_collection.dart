//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberCollection {
  /// Returns a new [MemberCollection] instance.
  MemberCollection({
    this.items = const [],
  });

  /// Returns a new [MemberCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberCollection(
      items: Member.listFromJson(json[r'items']),
    );
  }

  List<Member> items;

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

  static List<MemberCollection> listFromJson(List<dynamic> json) {
    return <MemberCollection>[
      if (json is List)
        for (dynamic value in json) MemberCollection.fromJson(value),
    ];
  }

  static Map<String, MemberCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, MemberCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberCollection-objects as value to a dart map
  static Map<String, List<MemberCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberCollection>>{
      if (json is Map)
        for (final entry in json.entries)
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
