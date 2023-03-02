//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerCollection {
  /// Returns a new [SignerCollection] instance.
  SignerCollection({
    this.items = const [],
  });

  /// Returns a new [SignerCollection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerCollection(
      items: Signer.listFromJson(json[r'items']),
    );
  }

  List<Signer>? items;

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

  static List<SignerCollection> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerCollection>[];
    }

    return json.fold(<SignerCollection>[],
        (List<SignerCollection> previousValue, element) {
      final SignerCollection? object = SignerCollection.fromJson(element);
      if (object is SignerCollection) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerCollection> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerCollection>{};
    }

    return json.entries.fold(<String, SignerCollection>{},
        (Map<String, SignerCollection> previousValue, element) {
      final SignerCollection? object = SignerCollection.fromJson(element.value);
      if (object is SignerCollection) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerCollection-objects as value to a dart map
  static Map<String, List<SignerCollection>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerCollection>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerCollection>>(
          key, SignerCollection.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerCollection[items=$items]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (items != null) r'items': items,
    };
  }
}
