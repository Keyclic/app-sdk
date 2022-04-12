//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class SignerCollection {
  /// Returns a new [SignerCollection] instance.
  SignerCollection({
    this.items = const [],
  });

  /// Returns a new [SignerCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory SignerCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerCollection(
      items: Signer.listFromJson(json[r'items']),
    );
  }

  List<Signer> items;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerCollection &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  @override
  int get hashCode => (items == null ? 0 : items.hashCode);

  static List<SignerCollection> listFromJson(List<dynamic> json) {
    return <SignerCollection>[
      if (json is List)
        for (dynamic value in json) SignerCollection.fromJson(value),
    ];
  }

  static Map<String, SignerCollection> mapFromJson(Map<String, dynamic> json) {
    return <String, SignerCollection>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerCollection.fromJson(entry.value),
    };
  }

  // maps a json object with a list of SignerCollection-objects as value to a dart map
  static Map<String, List<SignerCollection>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<SignerCollection>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: SignerCollection.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SignerCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
